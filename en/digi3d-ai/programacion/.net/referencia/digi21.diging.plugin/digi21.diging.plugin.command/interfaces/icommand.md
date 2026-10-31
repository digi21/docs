# ICommand
<!-- id: icommand -->
<!-- origen: fe3cf2c140979c81e769a265f2403c1e6e113aad -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Methods through which Digi3D.AI notifies a command of drawing window events.

```csharp
public interface ICommand
```

[Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) implements this interface. Digi3D.AI only executes classes derived from `Command` as commands: a class implementing `ICommand` without deriving from `Command` cannot run as a command.

The `Top` property of [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md) returns an `ICommand` representing the command at the top of the command stack, whether a Digi3D.AI command or a .NET command, or `null` if the stack is empty. Each method of that object sends the corresponding event to that command. The object is not updated when the stack changes: do not call its methods after the command ends.

## Methods

| Method | Description |
| :--- | :--- |
| `void OnInitialize()` | Notifies the command that it has been pushed onto the stack. |
| `void OnSetFocus()` | Notifies the command that it has returned to the top of the stack. |
| `void OnLostFocus()` | Notifies the command that another command has been pushed above it. |
| `bool OnDataDown(Point3D groundPoint)` | Notifies the command of a data button press at ground coordinates `groundPoint`. |
| `bool OnDataUp(Point3D groundPoint)` | Notifies the command of a data button release. |
| `bool OnSnapDown(Point3D groundPoint)` | Notifies the command of a snap button press. |
| `bool OnSnapUp(Point3D groundPoint)` | Notifies the command of a snap button release. |
| `bool OnResetDown(Point3D groundPoint)` | Notifies the command of a reset button press. |
| `bool OnResetUp(Point3D groundPoint)` | Notifies the command of a reset button release. |
| `void OnMove(Point3D groundPoint, InputDeviceButton button)` | Notifies the command of cursor movement to `groundPoint`. `button` is the input device button pressed during movement ([InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md)). |
| `void OnEntitySelected(Entity entity, Point3D groundPoint, int firstVertex, int secondVertex)` | Notifies the command that `entity` has been selected at `groundPoint`, on the segment from vertex `firstVertex` to vertex `secondVertex`. |

The `On…Down` and `On…Up` methods return `true` if the command has processed the event. See the [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) method table for the meaning of each button's return value.

On the object returned by `Commands.Top`, `OnEntitySelected` requires the command to support entity selection. If the top Digi3D.AI command does not support selection, calling it causes an invalid memory access.

## Events

| Event | Description |
| :--- | :--- |
| `EventHandler Disposing` | Raised when the command ends. On the object returned by `Commands.Top`, raised when the command at the top ends. |

## Example

This method sends a data button press and release to the command at the top of the stack:

```csharp
using Digi21.DigiNG.Plugin.Command;
using Digi21.Math;

namespace InformaEntidad;

public static class Pulsaciones
{
    // Simulates a data button press in the active command.
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

See [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#example) for a complete command example.
