# Commands
<!-- id: commands -->
<!-- origen: b728cef145b0970bf84c49218c7de71f70d2c659 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Drawing window's command stack: executes commands, retrieves and removes the active command, and controls command repetition.

```csharp
public class Commands
```

The class has no public constructors. Obtain the object through the static [DigiNG.Commands](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which throws `NullReferenceException` if no drawing window is open. While the active drawing window is closing (for example, inside a `DestroyingWindow` handler or a command's `Disposing` event), the window no longer has a document, and methods using the document throw `NullReferenceException`. The object is bound to the drawing window active when `DigiNG.Commands` is read: when that window closes, all members throw `ObjectDisposedException`.

Digi3D.AI commands form a stack: the command at the top (the active command) receives input device events. Executing a command places the new command at the top; when it ends, the previous command returns to the top.

## Properties

| Property | Description |
| :--- | :--- |
| [`ICommand`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) `Top` | Active command, or `null` if the stack is empty. Each read creates a new object providing access to the command. |
| `bool AllowRepeat` | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) variable, shared by all drawing windows: if `true`, when a command supporting repetition ends, Digi3D.AI executes it again with the same parameters. See [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md)'s `AllowRepeat` property for the conditions under which a .NET command repeats. |
| `bool LockRepeat` | Drawing window's command repetition lock: while `true`, commands do not repeat even if `AllowRepeat` is `true`. The property is a counter: assigning `true` increments it, assigning `false` decrements it if nonzero, and `get` returns `true` while the counter is nonzero. Each assignment of `true` must be balanced with one of `false`. |
| `bool ExecuteCommandsWhenReady` | Automatic mode, the drawing window's [AUTOMATIC](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/automatico.md) variable: if `true` and no command is running, digitizing a point makes Digi3D.AI run the command associated with the active code, if that code supports automatic mode. |

## Methods

| Method | Description |
| :--- | :--- |
| `void Push(string command)` | Executes `command`, written as on the command line: the command name followed by `=` and its parameters (for example, `"LOAD_ASSEMBLY=C:\\MisExtensiones\\Orden.dll"`). Text starting with `@` runs as a macro. If `DigiNG.LockUndo` is `false`, the command opens its own undo transaction. |
| `void Push(string command, bool allowRepeat)` | Like `Push(string)`. With `allowRepeat` set to `false`, the command left at the top of the stack does not repeat when it ends. |
| `void Push(Command command)` | Places a .NET command created by the extension ([Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md)) at the top of the stack. If the command has not run before, closes the most recent open transaction and opens a new one for the command. Does not raise the command's `Initialize` event. Throws `ArgumentNullException` if `command` is `null`, `ObjectDisposedException` if `Dispose` has already been called on `command`, and `InvalidOperationException` if `command` has already left the stack (for example, because the user ended it with Escape): a finished command cannot be pushed again. |
| `T Push<T>(params object[] args) where T : Command` | Creates an object of class `T` using the constructor matching `args`, places it at the top of the stack, calls its `OnInitialize` (`Initialize` event) and returns it when `OnInitialize` finishes. Opens no transaction: changes made by command `T` are stored in the open transaction and, when command `T` ends, Digi3D.AI closes the most recent open transaction. |
| `bool Pop()` | Removes the active command from the stack. If it is a .NET command, raises its [Disposing](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) event, and a subsequent `Dispose` on that command does nothing. Returns `true` if a command remains on the stack afterward. |
| `void AddToHistorical(string command)` | Adds `command` to the drawing window's command history. |

The name Digi3D.AI displays for a `Push(Command)` or `Push<T>` command is the `Name` from its [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) attribute, in lowercase. If the class has no attribute, Digi3D.AI displays a generic unknown-command name.

## Example

For each active code, this command executes a helper command that counts non-deleted entities with that code and writes the result to the results window. The helper command has no `[Command]` attribute, so the user cannot execute it by name: it only runs through `Push<T>`:

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

            // Push<T> returns when the Initialize event of CuentaCodigo finishes.
            foreach (var código in DigiNG.Codes.ActiveCodes)
                DigiNG.Commands.Push<CuentaCodigo>(código.Name);

            Dispose();
        };
    }
}
```
