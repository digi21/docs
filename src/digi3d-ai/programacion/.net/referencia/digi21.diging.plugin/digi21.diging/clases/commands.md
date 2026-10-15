# Commands
<!-- id: commands -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Pila de órdenes de la ventana de dibujo: ejecuta órdenes, consulta y quita la orden activa, y controla la repetición de órdenes.

```csharp
public class Commands
```

La clase no tiene constructores públicos. El objeto se obtiene con la propiedad estática [DigiNG.Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), que lanza `NullReferenceException` si no hay ninguna ventana de dibujo abierta. Mientras se cierra la ventana de dibujo activa (por ejemplo, dentro de un manejador de `DestroyingWindow` o del evento `Disposing` de una orden), la ventana ya no tiene documento, y los métodos que lo usan lanzan `NullReferenceException`. El objeto queda ligado a la ventana de dibujo activa en el momento de obtenerlo: cuando esa ventana se cierra, todos los miembros lanzan `ObjectDisposedException`.

Las órdenes de Digi3D.AI forman una pila: la orden que ocupa la primera posición (la orden activa) recibe los eventos del dispositivo de entrada. Al ejecutar una orden, la orden nueva pasa a la primera posición; al terminar, la orden anterior vuelve a la primera posición.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`ICommand`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) `Top` | Orden activa, o `null` si la pila está vacía. Cada lectura crea un objeto nuevo que da acceso a la orden. |
| `bool AllowRepeat` | Variable [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md), que comparten todas las ventanas de dibujo: si vale `true`, al terminar una orden que admite repetición, Digi3D.AI la vuelve a ejecutar con los mismos parámetros. Las condiciones para que una orden .NET se repita están en la propiedad `AllowRepeat` de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md). |
| `bool LockRepeat` | Bloqueo de la repetición de órdenes de la ventana de dibujo: mientras vale `true`, las órdenes no se repiten aunque `AllowRepeat` valga `true`. La propiedad es un contador: asignar `true` lo incrementa, asignar `false` lo decrementa si no vale 0, y el descriptor `get` devuelve `true` mientras el contador no vale 0. Cada asignación de `true` se compensa con una de `false`. |
| `bool ExecuteCommandsWhenReady` | Modo automático, la variable [AUTOMATICO](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/automatico.md) de la ventana de dibujo: si vale `true` y no hay ninguna orden en ejecución, al digitalizar un punto Digi3D.AI ejecuta la orden asociada al código activo, si ese código admite el modo automático. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Push(string command)` | Ejecuta la orden `command`, escrita como en la línea de órdenes: el nombre de la orden y, después de un signo `=`, sus parámetros (por ejemplo, `"CARGA_ENSAMBLADO=C:\\MisExtensiones\\Orden.dll"`). Un texto que empieza por `@` se ejecuta como una macro. Si `DigiNG.LockUndo` vale `false`, la orden abre su propia transacción de deshacer. |
| `void Push(string command, bool allowRepeat)` | Igual que `Push(string)`. Con `allowRepeat` a `false`, la orden que queda en la primera posición de la pila no se repite al terminar. |
| `void Push(Command command)` | Pone en la primera posición de la pila una orden .NET creada por la extensión ([Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md)). Si la orden no se había ejecutado antes, cierra la transacción abierta más reciente y abre una nueva para la orden. No produce el evento `Initialize` de la orden. Lanza `ArgumentNullException` si `command` es `null` y `ObjectDisposedException` si ya se ha llamado a `Dispose` en `command`, e `InvalidOperationException` si `command` ya ha salido de la pila (por ejemplo, porque el usuario la terminó con Escape): una orden terminada no se puede volver a apilar. |
| `T Push<T>(params object[] args) where T : Command` | Crea un objeto de la clase `T` con el constructor que corresponde a `args`, lo pone en la primera posición de la pila, llama a su `OnInitialize` (evento `Initialize`) y lo devuelve cuando `OnInitialize` termina. No abre ninguna transacción: los cambios de la orden `T` se guardan en la transacción abierta y, cuando la orden `T` termina, Digi3D.AI cierra la transacción abierta más reciente. |
| `bool Pop()` | Quita de la pila la orden activa. Si es una orden .NET, produce su evento [Disposing](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md), y un `Dispose` posterior sobre esa orden no hace nada. Devuelve `true` si después queda alguna orden en la pila. |
| `void AddToHistorical(string command)` | Añade `command` al historial de órdenes de la ventana de dibujo. |

El nombre que Digi3D.AI muestra para una orden de `Push(Command)` o `Push<T>` es el `Name` de su atributo [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md), en minúsculas. Si la clase no tiene el atributo, Digi3D.AI muestra un nombre genérico de orden desconocida.

## Ejemplo

Esta orden ejecuta, por cada código activo, una orden auxiliar que cuenta las entidades no eliminadas de ese código y escribe el resultado en la ventana de resultados. La orden auxiliar no tiene atributo `[Command]`, así que el usuario no la puede ejecutar por su nombre: solo se ejecuta con `Push<T>`:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

public class CuentaCodigo : Command
{
    public CuentaCodigo(string código)
    {
        Initialize += (sender, e) =>
        {
            var entidades = DigiNG.DrawingFile
                .Count(entidad => !entidad.Deleted && entidad.Codes.Any(c => c.Name == código));

            Digi3D.OutputWindow.WriteLine($"{código}: {entidades}");
            Dispose();
        };
    }
}

[Command(Name = "CUENTA_CODIGOS_ACTIVOS")]
public class CuentaCodigosActivos : Command
{
    public CuentaCodigosActivos()
    {
        Initialize += (sender, e) =>
        {
            Digi3D.OutputWindow.Show();

            // Push<T> vuelve cuando termina el evento Initialize de CuentaCodigo.
            foreach (var código in DigiNG.Codes.ActiveCodes)
                DigiNG.Commands.Push<CuentaCodigo>(código.Name);

            Dispose();
        };
    }
}
```
