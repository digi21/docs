# TaskMessageBox
<!-- id: taskmessagebox -->
<!-- origen: 89e70df1b8c41a525f8112b4d28686da39b9b4b7 -->

Namespace: `Digi21.DigiNG.Plugin.TaskPanel`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Task panel task that, when double-clicked, displays a message box with text and an OK button. Useful for providing a longer explanation than the task text.

```csharp
public sealed class TaskMessageBox : TaskBase
```

Inheritance: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → `TaskMessageBox`. Implements [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

This class is in the `Digi21.DigiNG` assembly, rather than `Digi21.DigiNG.Plugin` like the other tasks in its namespace. The `Digi21.DigiNG.Plugin` NuGet package depends on `Digi21.DigiNG`, so an extension using the former has access to the class.

Add the task to the panel through [Digi3D.Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md).

## Constructors

```csharp
public TaskMessageBox()
public TaskMessageBox(string title, string description, TaskSeverity severity, string drawingFile, string module)
public TaskMessageBox(string title, string description, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parameter | Description |
| :--- | :--- |
| `title` | Task text in the task panel. |
| `description` | Message box text. No property returns or changes it. |
| `severity` | Task severity, from the [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md) enumeration. |
| `drawingFile` | Drawing file to which the task refers. Accepts `null`. |
| `module` | Name of the module that generated the task, for example the command name. Accepts `null`. |
| `children` | Child tasks. |

The parameterless constructor leaves the description as `null`, so the message box is empty. To assign a description, use one of the two constructors accepting `description`, because the description can only be assigned in the constructor.

## Properties

Properties inherited from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` and `Children`.

## Methods

| Method | Description |
| :--- | :--- |
| `void Execute()` | Digi3D.AI calls `Execute` when you double-click the task. `Execute` displays a modal message box with the description and an OK button, returning when the user closes it. |

## Example

This command adds a warning for each code in the drawing file that is only assigned to deleted entities. Double-clicking a task opens a message box explaining the warning:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "CODIGOS_SIN_ENTIDADES")]
public class CodigosSinEntidades : Command
{
    public CodigosSinEntidades()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var usados = archivo
                .Where(entidad => !entidad.Deleted)
                .SelectMany(entidad => entidad.Codes)
                .Select(código => código.Name)
                .ToHashSet();

            var todos = archivo
                .SelectMany(entidad => entidad.Codes)
                .Select(código => código.Name)
                .Distinct();

            foreach (var código in todos.Where(código => !usados.Contains(código)))
            {
                Digi3D.Tasks.Add(new TaskMessageBox(
                    $"Código {código} sin entidades",
                    $"Todas las entidades con el código {código} están eliminadas.",
                    TaskSeverity.Warning,
                    archivo.Path,
                    "CODIGOS_SIN_ENTIDADES"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
