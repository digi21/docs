# ICommand
<!-- id: icommand -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Métodos con los que Digi3D.AI notifica a una orden los eventos de la ventana de dibujo.

```csharp
public interface ICommand
```

[Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md) implementa esta interfaz. Digi3D.AI solo ejecuta como órdenes las clases que derivan de `Command`: una clase que implementa `ICommand` sin derivar de `Command` no se puede ejecutar como orden.

La propiedad `Top` de [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md) devuelve un `ICommand` que representa la orden que ocupa la primera posición de la pila de órdenes, sea una orden de Digi3D.AI o una orden .NET, o `null` si la pila está vacía. Cada método de ese objeto envía el evento correspondiente a esa orden. El objeto no se actualiza si cambia la pila: después de que la orden termine, no llames a sus métodos.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void OnInitialize()` | Notifica a la orden que se ha apilado. |
| `void OnSetFocus()` | Notifica a la orden que vuelve a ser la primera de la pila. |
| `void OnLostFocus()` | Notifica a la orden que se ha apilado otra orden encima. |
| `bool OnDataDown(Point3D groundPoint)` | Notifica la pulsación del botón de dato en las coordenadas terreno `groundPoint`. |
| `bool OnDataUp(Point3D groundPoint)` | Notifica la liberación del botón de dato. |
| `bool OnSnapDown(Point3D groundPoint)` | Notifica la pulsación del botón de tentativo. |
| `bool OnSnapUp(Point3D groundPoint)` | Notifica la liberación del botón de tentativo. |
| `bool OnResetDown(Point3D groundPoint)` | Notifica la pulsación del botón de reset. |
| `bool OnResetUp(Point3D groundPoint)` | Notifica la liberación del botón de reset. |
| `void OnMove(Point3D groundPoint, InputDeviceButton button)` | Notifica el desplazamiento del cursor a `groundPoint`. `button` es el botón del dispositivo de entrada pulsado durante el desplazamiento ([InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md)). |
| `void OnEntitySelected(Entity entity, Point3D groundPoint, int firstVertex, int secondVertex)` | Notifica que se ha seleccionado `entity` en `groundPoint`, en el segmento que va del vértice `firstVertex` al vértice `secondVertex`. |

Los métodos `On…Down` y `On…Up` devuelven `true` si la orden ha procesado el evento. El significado del valor devuelto en cada botón está en la tabla de métodos de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md).

En el objeto que devuelve `Commands.Top`, `OnEntitySelected` requiere que la orden admita la selección de entidades. Si la orden de Digi3D.AI que ocupa la primera posición no admite selección, la llamada provoca un acceso a memoria no válido.

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `EventHandler Disposing` | Se produce cuando la orden termina. En el objeto que devuelve `Commands.Top`, se produce cuando la orden de la primera posición termina. |

> El paquete NuGet `Digi21.DigiNG.Plugin` 26.0.0 no declara el evento `Disposing` en `ICommand`; el ensamblado que instala Digi3D.AI sí lo declara. Una clase compilada con el paquete que implemente `ICommand` directamente no implementa `add_Disposing` ni `remove_Disposing`, y el CLR no puede cargarla con el ensamblado instalado (`TypeLoadException`). Las clases que derivan de `Command` no se ven afectadas. El parámetro `button` de `OnMove` se llama `InputDeviceButton` en el ensamblado instalado.

## Ejemplo

Este método envía una pulsación y una liberación del botón de dato a la orden que ocupa la primera posición de la pila:

```csharp
using Digi21.DigiNG.Plugin.Command;
using Digi21.Math;

namespace InformaEntidad;

public static class Pulsaciones
{
    // Simula una pulsación del botón de dato en la orden activa.
    public static bool EnviaDato(Point3D punto)
    {
        ICommand orden = Digi21.DigiNG.DigiNG.Commands.Top;
        if (orden is null)
            return false;

        orden.OnDataDown(punto);
        orden.OnDataUp(punto);
        return true;
    }
}
```

El ejemplo de una orden completa está en [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/clases/command.md#ejemplo).
