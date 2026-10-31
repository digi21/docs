# TaskEntityGotoPoint
<!-- id: taskentitygotopoint -->
<!-- origen: 66daed4f6ce637107949f67d4ed1c9802b3c7c9f -->

Namespace: `Digi21.DigiNG.Plugin.TaskPanel`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Task panel task that, when double-clicked, centers the drawing window on coordinates and highlights an entity for a few seconds. Useful for indicating a specific point on an entity, for example the endpoint of a line that falls short of another.

```csharp
public class TaskEntityGotoPoint : TaskGotoPoint
```

Inheritance: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) → `TaskEntityGotoPoint`. Implements [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

Because it derives from `TaskGotoPoint`, Digi3D.AI draws the task's icon at `Coordinates` under the same conditions as for `TaskGotoPoint`.

## Constructors

```csharp
public TaskEntityGotoPoint()
public TaskEntityGotoPoint(Point3D coordinates, Entity entity, int seconds, string title, TaskSeverity severity)
public TaskEntityGotoPoint(Point3D coordinates, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskEntityGotoPoint(Point3D coordinates, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
public TaskEntityGotoPoint(Point3D coordinates, Color color, int size, Entity entity, int seconds, string title, TaskSeverity severity)
public TaskEntityGotoPoint(Point3D coordinates, Color color, int size, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskEntityGotoPoint(Point3D coordinates, Color color, int size, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parameter | Description |
| :--- | :--- |
| `coordinates`, `color`, `size`, `title`, `severity`, `drawingFile`, `module`, `children` | Same as the [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) constructor parameters, with the same default values. |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) to highlight. Returned in `Entity`. |
| `seconds` | Number of seconds to highlight the entity. Returned in `Seconds`. |

The parameterless constructor leaves `Entity` as `null` and `Seconds` as 0, in addition to the values set by the parameterless `TaskGotoPoint` constructor.

## Properties

| Property | Description |
| :--- | :--- |
| `Entity Entity { get; set; }` | Entity to highlight. |
| `int Seconds { get; set; }` | Number of seconds to highlight the entity. |

Properties inherited from [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md): `Coordinates`, `Color` and `Size`; and from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` and `Children`.

## Methods

| Method | Description |
| :--- | :--- |
| `void Execute()` | Called by Digi3D.AI when the task is double-clicked. Centers the drawing window on `Coordinates`, like `TaskGotoPoint.Execute`, and, if `Entity` is not `null`, draws the entity as selected for `Seconds` seconds. Throws `NullReferenceException` if no drawing window is open. |

## Example

This command adds a warning for each non-deleted open line in the drawing file. Double-clicking a task centers the drawing window on the line's last vertex and highlights the line for 3 seconds:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "LINEAS_ABIERTAS")]
public class LineasAbiertas : Command
{
    public LineasAbiertas()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            foreach (var línea in archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted && !línea.Closed))
            {
                Digi3D.Tasks.Add(new TaskEntityGotoPoint(
                    línea.LastVertex,
                    línea,
                    3,
                    "Línea abierta",
                    TaskSeverity.Warning,
                    archivo.Path,
                    "LINEAS_ABIERTAS"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
