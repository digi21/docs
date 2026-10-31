# TaskZoomEntity
<!-- id: taskzoomentity -->
<!-- origen: 63a244d1247eee7f0f13666fdab642c9395cc66e -->

Namespace: `Digi21.DigiNG.Plugin.TaskPanel`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Task panel task that, when double-clicked, frames an entity in the drawing window and highlights it for a few seconds.

```csharp
public class TaskZoomEntity : TaskAnimateEntity
```

Inheritance: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) → `TaskZoomEntity`. Implements [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

## Constructors

```csharp
public TaskZoomEntity()
public TaskZoomEntity(Entity entity, int seconds, string title, TaskSeverity severity)
public TaskZoomEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskZoomEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

Parameters and default values are the same as for [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) constructors.

## Properties

Properties inherited from [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md): `Entity` and `Seconds`; and from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` and `Children`.

## Methods

| Method | Description |
| :--- | :--- |
| `void Execute()` | Called by Digi3D.AI when the task is double-clicked. If `Entity` is `null`, does nothing. Otherwise, reads the active drawing window's camera and sets its position to the entity's center (`Center`). If the camera is orthographic and the entity's minimum and maximum coordinates are valid (`Valid`), also sets the view width to `Xmax - Xmin` and height to `Ymax - Ymin`. Then redraws the window and draws the entity as selected for `Seconds` seconds. Throws `NullReferenceException` if `Entity` is not `null` and no drawing window is open. |

The view fits the entity's box without a margin. For an entity with zero width or height, such as a point, the camera receives a view width or height of 0; for these entities, use [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md), which centers the window without changing the scale.

## Example

This command receives an area threshold in the drawing file's square units as a parameter and adds an error for each non-deleted polygon whose area is below that threshold. Double-clicking a task frames its polygon in the drawing window and highlights it for 2 seconds:

```csharp
using System.Globalization;
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "POLIGONOS_PEQUENOS")]
public class PoligonosPequenos : Command
{
    public PoligonosPequenos()
    {
        Initialize += (sender, e) =>
        {
            if (Args.Length != 1 || !double.TryParse(Args[0], CultureInfo.InvariantCulture, out var áreaMínima))
            {
                Digi3D.ShowBallon("POLIGONOS_PEQUENOS", "Uso: POLIGONOS_PEQUENOS=área", 3, BallonIcon.Error);
                Dispose();
                return;
            }

            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var pequeños = archivo
                .OfType<ReadOnlyPolygon>()
                .Where(polígono => !polígono.Deleted && polígono.Area < áreaMínima);

            foreach (var polígono in pequeños)
            {
                Digi3D.Tasks.Add(new TaskZoomEntity(
                    polígono,
                    2,
                    $"Polígono de área {polígono.Area:F2}",
                    TaskSeverity.Error,
                    archivo.Path,
                    "POLIGONOS_PEQUENOS"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```

The [Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md) example also uses `TaskZoomEntity`.
