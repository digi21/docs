# Tasks
<!-- id: tasks -->
<!-- origen: 6c528bf0b855f187f527942ba8903903368865c2 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Digi3D.AI's task panel: the list of errors, warnings and messages that the user browses and executes by double-clicking.

```csharp
public class Tasks
```

The class has no public constructors. Obtain the instance through [Digi3D.Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

Each task is an object implementing [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). The panel displays its `Title`, `Severity`, `DrawingFile` and `Module`, and displays the tasks in `Children` as child tasks. When a task is double-clicked, Digi3D.AI calls its `Execute` method. If `Execute` throws an exception, Digi3D.AI displays its message (the `InnerException` message, if present) in a message box. The [Digi21.DigiNG.Plugin.TaskPanel](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/) namespace provides tasks that move the drawing window to coordinates or an entity; for another action, derive a class from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/).

Digi3D.AI clears the task panel when closing a drawing file.

## Methods

| Method | Description |
| :--- | :--- |
| `void Add(ITask task)` | Adds `task` to the task panel. Child tasks are read from `task.Children` during this call: tasks added to `Children` later do not appear in the panel. If `task` is a [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) (or a derived class), the panel also stores its coordinates, color and size to draw the icon in the drawing window. Throws `NullReferenceException` if `task` is `null`. |
| `void Clear()` | Removes all tasks from the panel. |
| `void Show()` | Shows the task panel. |
| `void Hide()` | Hides the task panel. |
| `void ToggleDocking()` | Toggles the task panel between docked and floating. |

All methods throw `NullReferenceException` when run outside Digi3D.AI.

## Example

This command adds an error to the task panel for each non-deleted line with fewer than 3 vertices. Double-clicking a task frames the line in the drawing window and highlights it for 2 seconds:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "LINEAS_CORTAS")]
public class LineasCortas : Command
{
    public LineasCortas()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            Digi3D.Tasks.Clear();
            foreach (var línea in archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted))
            {
                if (línea.Points.Count >= 3)
                    continue;

                Digi3D.Tasks.Add(new TaskZoomEntity(
                    línea,
                    2,
                    $"Línea con {línea.Points.Count} vértices",
                    TaskSeverity.Error,
                    archivo.Path,
                    "LINEAS_CORTAS"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
