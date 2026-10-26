# Command
<!-- id: command -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Clase base de las órdenes de Digi3D.AI escritas en .NET. Una orden recibe los eventos del dispositivo de entrada (el ratón o el dispositivo fotogramétrico) mientras ocupa la primera posición de la pila de órdenes de la ventana de dibujo.

```csharp
public abstract class Command : ICommand, IDisposable
```

Implementa: [ICommand](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) e `IDisposable`.

## Registro de la orden

Digi3D.AI recorre los tipos públicos de cada extensión que carga y registra como orden cada clase que tiene el atributo [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) o [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md). El nombre de la orden es la propiedad `Name` del atributo convertida a minúsculas. El [tutorial de extensiones](/digi3d-ai/programacion/.net/tutorial-extension.md) explica cómo se carga una extensión.

Cada vez que el usuario ejecuta la orden, Digi3D.AI crea un objeto nuevo de la clase con su constructor público sin parámetros y lo convierte a `Command`:

- Si la clase no tiene constructor público sin parámetros, Digi3D.AI muestra un mensaje de error y no ejecuta la orden.
- Si el constructor lanza una excepción, Digi3D.AI muestra el mensaje de la excepción (el de `InnerException`, si existe) y no ejecuta la orden.
- La clase tiene que derivar de `Command`. Implementar [ICommand](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) sin derivar de `Command` no basta.

Una orden también se puede apilar desde código, sin atributo, con el método `Push` de [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md).

## Ciclo de vida

1. Digi3D.AI llama al constructor. En el constructor, `Args` es un vector vacío. El constructor es el sitio para suscribirse a los eventos.
2. Digi3D.AI asigna `Args` con los parámetros que el usuario ha escrito después del nombre de la orden.
3. Digi3D.AI apila la orden y produce `Initialize`. En ese momento no produce `SetFocus`.
4. Mientras la orden es la primera de la pila, recibe los eventos del dispositivo de entrada: `DataDown`, `DataUp`, `SnapDown`, `SnapUp`, `ResetDown`, `ResetUp`, `Move` y `EntitySelected`.
5. Si se apila otra orden encima (por ejemplo, un zoom o la orden de tentativo), Digi3D.AI produce `LostFocus` y la orden deja de recibir eventos. Cuando termina la orden apilada encima de la orden que perdió el foco y la orden que perdió el foco vuelve a ser la primera de la pila, Digi3D.AI produce `SetFocus`.
6. La orden termina cuando el código llama a `Dispose`, cuando el usuario pulsa Escape, cuando el usuario pulsa el botón de reset y la orden no tiene manejador de `ResetDown`, cuando el código llama a `Commands.Pop()` con la orden en la cima de la pila o cuando se cierra la ventana de dibujo con la orden en la pila. En todos los casos Digi3D.AI quita la orden de la pila y produce `Disposing`. Después de `Disposing`, la orden no recibe más eventos.

Si la ventana de dibujo que se cierra es la activa, Digi3D.AI produce `Disposing` cuando esa ventana ya no tiene documento: los miembros que usan el documento, como `DigiNG.NewTransaction`, `DigiNG.FinishTransaction` o `DrawingFile.Add`, lanzan `NullReferenceException`. Digi3D.AI no propaga las excepciones de .NET que lance un manejador de `Disposing`: las registra con `System.Diagnostics.Trace`.

Si un manejador de evento lanza una excepción, Digi3D.AI muestra su mensaje (el de `InnerException`, si existe) en un cuadro de mensaje y la orden sigue en la pila.

## Constructores

```csharp
public Command()
```

Crea la orden con `Args` vacío y `AllowRepeat` a `false`. La clase es abstracta: el constructor solo se llama desde el constructor de la clase derivada.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string[] Args { get; }` | Parámetros que el usuario escribe después del nombre de la orden, separados por espacios, tabuladores, saltos de línea o el signo `=`. Por ejemplo, `MIDE_DISTANCIA=2` da `["2"]` y `MIDE_DISTANCIA=2 3` da `["2", "3"]`. Es un vector vacío en el constructor y cuando la orden no tiene parámetros. Una orden apilada con `Commands.Push(Command)` no tiene parámetros. |
| `bool AllowRepeat { get; set; }` | Indica si Digi3D.AI vuelve a ejecutar la orden cuando se retira la orden de la pila. Valor `false` por defecto. Para que la orden se repita se tienen que cumplir cuatro condiciones: `AllowRepeat` vale `true`, el nombre de la orden está entre los que Digi3D.AI registra al cargar la extensión (lee el apartado «Registro de la orden»; una orden apilada con `Commands.Push` sin atributo no se repite), la variable de repetición de órdenes está activa ([Commands.AllowRepeat](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md)) y la repetición no está bloqueada ([Commands.LockRepeat](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md)). Para repetir la orden, Digi3D.AI la ejecuta por su nombre con los mismos parámetros: crea un objeto nuevo de la clase. Aunque se cumplan las cuatro condiciones, la orden no se repite si el usuario la termina con Escape, con el botón de reset sin manejador de `ResetDown` o con un doble clic sin manejador del doble clic: esas tres acciones desactivan la repetición antes de quitar la orden de la pila. `Commands.Push(string, false)` desactiva la repetición de la orden que queda en la cima de la pila, sea de .NET o de Digi3D.AI. |

## Métodos

Los métodos `On…` son virtuales. Digi3D.AI los llama para notificar cada evento a la orden, y la implementación de `Command` produce el evento correspondiente. Una clase derivada puede sobrescribir un método `On…` en lugar de suscribirse al evento; si el método sobrescrito no llama a la implementación base, el evento no se produce.

| Método | Descripción |
| :--- | :--- |
| `void Dispose()` | Termina la orden: Digi3D.AI la quita de la pila de órdenes y produce `Disposing`. Si la orden ya había terminado (con Escape, con `Commands.Pop()` o al cerrarse la ventana de dibujo), `Dispose` no vuelve a quitarla de la pila, no cierra ninguna transacción y no produce `Disposing` otra vez. Solo la primera llamada tiene efecto: las siguientes no hacen nada. En un objeto que Digi3D.AI no ha apilado, `Dispose` no quita nada de la pila. Después de `Dispose`, `Commands.Push(Command)` lanza `ObjectDisposedException` con el objeto; con una orden que ya ha terminado sin llamar a `Dispose`, lanza `InvalidOperationException`. |
| `virtual void OnInitialize()` | Produce `Initialize`. |
| `virtual void OnSetFocus()` | Produce `SetFocus`. |
| `virtual void OnLostFocus()` | Produce `LostFocus`. |
| `virtual bool OnDataDown(Point3D groundPoint)` | Produce `DataDown` y devuelve `true` si la orden tiene algún manejador de `DataDown`; si no, devuelve `false` sin producir el evento. Digi3D.AI no usa el valor devuelto. |
| `virtual bool OnDataUp(Point3D groundPoint)` | Produce `DataUp` y devuelve `true` si la orden tiene algún manejador de `DataUp`; si no, devuelve `false`. |
| `virtual bool OnSnapDown(Point3D groundPoint)` | Produce `SnapDown` y devuelve `true` si la orden tiene algún manejador de `SnapDown`; si no, devuelve `false`. Si devuelve `false`, Digi3D.AI ejecuta la orden de tentativo, que localiza la entidad o el vértice más cercano al cursor. |
| `virtual bool OnSnapUp(Point3D groundPoint)` | Produce `SnapUp` y devuelve `true` si la orden tiene algún manejador de `SnapUp`; si no, devuelve `false`. |
| `virtual bool OnResetDown(Point3D groundPoint)` | Produce `ResetDown` y devuelve `true` si la orden tiene algún manejador de `ResetDown`; si no, devuelve `false`. Si devuelve `false`, Digi3D.AI emite un pitido y termina la orden. |
| `virtual bool OnResetUp(Point3D groundPoint)` | Produce `ResetUp` y devuelve `true` si la orden tiene algún manejador de `ResetUp`; si no, devuelve `false`. |
| `virtual void OnMove(Point3D groundPoint, InputDeviceButton button)` | Produce `Move` con un [MoveEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/moveeventargs.md). |
| `virtual void OnEntitySelected(Entity entity, Point3D groundPoint, int firstVertex, int secondVertex)` | Produce `EntitySelected` con un [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md). |

`groundPoint` contiene las coordenadas terreno del cursor en el momento del evento.

## Eventos

| Evento | Se produce cuando |
| :--- | :--- |
| `EventHandler Initialize` | Digi3D.AI apila la orden por primera vez. |
| `EventHandler SetFocus` | La orden vuelve a ser la primera de la pila después de que termine otra orden apilada encima. |
| `EventHandler LostFocus` | Se apila otra orden encima de esta. |
| `EventHandler<Point3DEventArgs> DataDown` | El usuario pulsa el botón de dato. |
| `EventHandler<Point3DEventArgs> DataUp` | El usuario suelta el botón de dato. |
| `EventHandler<Point3DEventArgs> SnapDown` | El usuario pulsa el botón de tentativo. |
| `EventHandler<Point3DEventArgs> SnapUp` | El usuario suelta el botón de tentativo. |
| `EventHandler<Point3DEventArgs> ResetDown` | El usuario pulsa el botón de reset. |
| `EventHandler<Point3DEventArgs> ResetUp` | El usuario suelta el botón de reset. |
| `EventHandler<MoveEventArgs> Move` | El usuario desplaza el cursor en la ventana de dibujo. |
| `EventHandler<EntitySelectedEventArgs> EntitySelected` | La orden recibe una entidad seleccionada. Los casos están en [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md). |
| `EventHandler Disposing` | La orden termina. Lee el apartado «Ciclo de vida». |

Los eventos de botón usan [Point3DEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3deventargs.md): `Coordinates` contiene las coordenadas terreno del cursor.

## Ejemplo

Esta orden mide la distancia entre dos puntos marcados con el botón de dato. Muestra la distancia en la barra de estado mientras se desplaza el cursor y la escribe en la ventana de resultados. El botón de reset anula el primer punto o, si no hay primer punto, termina la orden. El parámetro opcional es el número de decimales: `MIDE_DISTANCIA=2`. La orden no tiene manejador de `SnapDown`, así que el botón de tentativo ejecuta la orden de tentativo.

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.Menu;
using Digi21.Math;

namespace MideDistancia;

// Uso: MIDE_DISTANCIA [decimales]
[Command(Name = "MIDE_DISTANCIA")]
[CommandInMenu("Medir la distancia entre dos puntos", MenuItemGroup.InmediateGroup4)]
public class OrdenMideDistancia : Command
{
    private Point3D? primerPunto;
    private int decimales = 3;

    public OrdenMideDistancia()
    {
        // En el constructor, Args todavía está vacío.
        Initialize += (sender, e) =>
        {
            if (Args.Length > 0 && int.TryParse(Args[0], out var valor))
                decimales = valor;

            Digi3D.OutputWindow.Show();
            PideSiguientePunto();
        };

        // La orden vuelve a ser la primera de la pila, por ejemplo al terminar un zoom.
        SetFocus += (sender, e) => PideSiguientePunto();

        DataUp += (sender, e) =>
        {
            if (primerPunto is not Point3D inicio)
            {
                primerPunto = e.Coordinates;
            }
            else
            {
                var distancia = Point3D.CalculateModule(inicio, e.Coordinates);
                Digi3D.OutputWindow.WriteLine($"Distancia: {distancia.ToString($"F{decimales}")}");
                primerPunto = null;
            }

            PideSiguientePunto();
        };

        Move += (sender, e) =>
        {
            if (primerPunto is Point3D inicio)
                Digi3D.StatusBar.Text = $"Distancia: {Point3D.CalculateModule(inicio, e.Coordinates).ToString($"F{decimales}")}";
        };

        // Con un manejador de ResetDown, Digi3D.AI no termina la orden al pulsar el botón de reset.
        ResetDown += (sender, e) =>
        {
            if (primerPunto is null)
            {
                Dispose();
                return;
            }

            primerPunto = null;
            PideSiguientePunto();
        };

        Disposing += (sender, e) => Digi3D.StatusBar.Text = string.Empty;
    }

    private void PideSiguientePunto() =>
        Digi3D.StatusBar.Text = primerPunto is null ? "Marca el primer punto" : "Marca el segundo punto";
}
```

La página de [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md) tiene un ejemplo que sobrescribe `OnDataUp` en lugar de suscribirse a `DataUp`.
