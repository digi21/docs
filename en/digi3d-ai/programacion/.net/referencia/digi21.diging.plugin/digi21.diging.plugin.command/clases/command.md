# Command
<!-- id: command -->
<!-- origen: 8264499251be80408b11c22f6457cfd5d3b8a76e -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Base class for Digi3D.AI commands written in .NET. A command receives input device events (mouse or photogrammetric device) while at the top of the drawing window's command stack.

```csharp
public abstract class Command : ICommand, IDisposable
```

Implements: [ICommand](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) and `IDisposable`.

## Command registration

Digi3D.AI iterates each loaded extension's public types and registers each class with [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) or [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md) as a command. The command name is the attribute's `Name` property converted to lowercase. The [extension tutorial](/digi3d-ai/programacion/.net/tutorial-extension.md) explains how to load an extension.

Each time the user executes the command, Digi3D.AI creates a new class instance through its public parameterless constructor and casts it to `Command`:

- If the class has no public parameterless constructor, Digi3D.AI displays an error message and does not execute the command.
- If the constructor throws an exception, Digi3D.AI displays the exception message (the `InnerException` message, if present) and does not execute the command.
- The class must derive from `Command`. Implementing [ICommand](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) without deriving from `Command` is insufficient.

A command can also be pushed from code, without an attribute, through the `Push` method of [Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md).

## Life cycle

1. Digi3D.AI calls the constructor. In the constructor, `Args` is an empty array. The constructor is where you subscribe to events.
2. Digi3D.AI assigns `Args` the parameters the user entered after the command name.
3. Digi3D.AI pushes the command and raises `Initialize`. It does not raise `SetFocus` at that point.
4. While the command is at the top of the stack, it receives input device events: `DataDown`, `DataUp`, `SnapDown`, `SnapUp`, `ResetDown`, `ResetUp`, `Move` and `EntitySelected`.
5. If another command is pushed on top (for example, a zoom or the snap command), Digi3D.AI raises `LostFocus` and the command stops receiving events. When the command pushed above the one that lost focus ends, and the latter returns to the top of the stack, Digi3D.AI raises `SetFocus`.
6. The command ends when code calls `Dispose`, the user presses Escape, the user presses the reset button and the command has no `ResetDown` handler, code calls `Commands.Pop()` with the command at the top of the stack, or the drawing window closes with the command in its stack. In all cases, Digi3D.AI removes the command from the stack and raises `Disposing`. After `Disposing`, the command receives no further events.

If the closing drawing window is active, Digi3D.AI raises `Disposing` when that window no longer has a document: members using the document, such as `DigiNG.NewTransaction`, `DigiNG.FinishTransaction` or `DrawingFile.Add`, throw `NullReferenceException`. Digi3D.AI does not propagate .NET exceptions thrown by a `Disposing` handler: it logs them through `System.Diagnostics.Trace`.

If an event handler throws an exception, Digi3D.AI displays its message (the `InnerException` message, if present) in a message box and the command remains on the stack.

## Constructors

```csharp
public Command()
```

Creates the command with empty `Args` and `AllowRepeat` set to `false`. The class is abstract: the constructor is only called from a derived class's constructor.

## Properties

| Property | Description |
| :--- | :--- |
| `string[] Args { get; }` | Parameters entered by the user after the command name, separated by spaces, tabs, newlines or `=`. For example, `MIDE_DISTANCIA=2` gives `["2"]` and `MIDE_DISTANCIA=2 3` gives `["2", "3"]`. An empty array in the constructor and when the command has no parameters. A command pushed through `Commands.Push(Command)` has no parameters. |
| `bool AllowRepeat { get; set; }` | Indicates whether Digi3D.AI executes the command again when it is removed from the stack. Defaults to `false`. Four conditions must be met for repetition: `AllowRepeat` is `true`; the command name is among those Digi3D.AI registers when loading the extension (see "Command registration"; a command pushed through `Commands.Push` without an attribute does not repeat); command repetition is enabled ([Commands.AllowRepeat](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md)); and repetition is not locked ([Commands.LockRepeat](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/commands.md)). To repeat the command, Digi3D.AI executes it by name with the same parameters, creating a new class instance. Even when all four conditions are met, the command does not repeat if the user ends it with Escape, the reset button without a `ResetDown` handler, or a double-click without a double-click handler: these three actions disable repetition before removing the command from the stack. `Commands.Push(string, false)` disables repetition of the command at the top of the stack, whether a .NET or Digi3D.AI command. |

## Methods

The `On…` methods are virtual. Digi3D.AI calls them to notify the command of each event, and the `Command` implementation raises the corresponding event. A derived class can override an `On…` method instead of subscribing to the event; if the override does not call the base implementation, the event is not raised.

| Method | Description |
| :--- | :--- |
| `void Dispose()` | Ends the command: Digi3D.AI removes it from the command stack and raises `Disposing`. If the command has already ended (through Escape, `Commands.Pop()` or the drawing window closing), `Dispose` does not remove it again, close any transaction or raise `Disposing` again. Only the first call has an effect: subsequent calls do nothing. On an object Digi3D.AI has not pushed, `Dispose` removes nothing from the stack. After `Dispose`, `Commands.Push(Command)` throws `ObjectDisposedException` for the object; for a command that has already ended without calling `Dispose`, it throws `InvalidOperationException`. |
| `virtual void OnInitialize()` | Raises `Initialize`. |
| `virtual void OnSetFocus()` | Raises `SetFocus`. |
| `virtual void OnLostFocus()` | Raises `LostFocus`. |
| `virtual bool OnDataDown(Point3D groundPoint)` | Raises `DataDown` and returns `true` if the command has a `DataDown` handler; otherwise returns `false` without raising the event. Digi3D.AI does not use the return value. |
| `virtual bool OnDataUp(Point3D groundPoint)` | Raises `DataUp` and returns `true` if the command has a `DataUp` handler; otherwise returns `false`. |
| `virtual bool OnSnapDown(Point3D groundPoint)` | Raises `SnapDown` and returns `true` if the command has a `SnapDown` handler; otherwise returns `false`. If it returns `false`, Digi3D.AI runs the snap command, which locates the entity or vertex nearest the cursor. |
| `virtual bool OnSnapUp(Point3D groundPoint)` | Raises `SnapUp` and returns `true` if the command has a `SnapUp` handler; otherwise returns `false`. |
| `virtual bool OnResetDown(Point3D groundPoint)` | Raises `ResetDown` and returns `true` if the command has a `ResetDown` handler; otherwise returns `false`. If it returns `false`, Digi3D.AI beeps and ends the command. |
| `virtual bool OnResetUp(Point3D groundPoint)` | Raises `ResetUp` and returns `true` if the command has a `ResetUp` handler; otherwise returns `false`. |
| `virtual void OnMove(Point3D groundPoint, InputDeviceButton button)` | Raises `Move` with a [MoveEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/moveeventargs.md). |
| `virtual void OnEntitySelected(Entity entity, Point3D groundPoint, int firstVertex, int secondVertex)` | Raises `EntitySelected` with an [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md). |

`groundPoint` contains the cursor's ground coordinates at the time of the event.

## Events

| Event | Occurs when |
| :--- | :--- |
| `EventHandler Initialize` | Digi3D.AI first pushes the command. |
| `EventHandler SetFocus` | The command returns to the top of the stack after another command pushed above it ends. |
| `EventHandler LostFocus` | Another command is pushed above this one. |
| `EventHandler<Point3DEventArgs> DataDown` | The user presses the data button. |
| `EventHandler<Point3DEventArgs> DataUp` | The user releases the data button. |
| `EventHandler<Point3DEventArgs> SnapDown` | The user presses the snap button. |
| `EventHandler<Point3DEventArgs> SnapUp` | The user releases the snap button. |
| `EventHandler<Point3DEventArgs> ResetDown` | The user presses the reset button. |
| `EventHandler<Point3DEventArgs> ResetUp` | The user releases the reset button. |
| `EventHandler<MoveEventArgs> Move` | The user moves the cursor in the drawing window. |
| `EventHandler<EntitySelectedEventArgs> EntitySelected` | The command receives a selected entity. See [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md) for the cases. |
| `EventHandler Disposing` | The command ends. See "Life cycle". |

Button events use [Point3DEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3deventargs.md): `Coordinates` contains the cursor's ground coordinates.

## Example

This command measures the distance between two points marked with the data button. It displays the distance in the status bar as the cursor moves and writes it to the results window. The reset button cancels the first point or, if no first point exists, ends the command. The optional parameter is the number of decimal places: `MIDE_DISTANCIA=2`. The command has no `SnapDown` handler, so the snap button runs the snap command.

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.Menu;
using Digi21.Math;

namespace MideDistancia;

// Usage: MIDE_DISTANCIA [decimal places]
[Command(Name = "MIDE_DISTANCIA")]
[CommandInMenu("Medir la distancia entre dos puntos", MenuItemGroup.InmediateGroup4)]
public class OrdenMideDistancia : Command
{
    private Point3D? primerPunto;
    private int decimales = 3;

    public OrdenMideDistancia()
    {
        // Args is still empty in the constructor.
        Initialize += (sender, e) =>
        {
            if (Args.Length > 0 && int.TryParse(Args[0], out var valor))
                decimales = valor;

            Digi3D.OutputWindow.Show();
            PideSiguientePunto();
        };

        // The command returns to the top of the stack, for example when a zoom ends.
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

        // With a ResetDown handler, Digi3D.AI does not end the command when the reset button is pressed.
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

The [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md) page has an example overriding `OnDataUp` instead of subscribing to `DataUp`.
