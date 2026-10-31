# TaskGotoPoint
<!-- id: taskgotopoint -->
<!-- origen: f7569805a28f5c030239890929b77f240ba43ac2 -->

Namespace: `Digi21.DigiNG.Plugin.TaskPanel`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Task panel task that, when double-clicked, centers the drawing window on coordinates. Digi3D.AI also draws an icon at those coordinates in the drawing window.

```csharp
public class TaskGotoPoint : TaskBase
```

Inheritance: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → `TaskGotoPoint`. Implements [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). Derived class: [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md).

Add the task to the panel through [Digi3D.Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md).

## Icon in the drawing window

If the task has `Severity` equal to `TaskSeverity.Error` and is added directly to the panel (rather than as another task's child), Digi3D.AI draws a filled triangle at `Coordinates`, in `Color`, `2 × Size` pixels wide and high, centered on the coordinates. Zooming does not change the triangle's size. `Tasks.Add` copies `Coordinates`, `Color` and `Size` when adding the task: subsequent changes to those properties do not move or change the icon.

## Constructors

```csharp
public TaskGotoPoint()
public TaskGotoPoint(Point3D coordinates, string title, TaskSeverity severity)
public TaskGotoPoint(Point3D coordinates, string title, TaskSeverity severity, string drawingFile, string module)
public TaskGotoPoint(Point3D coordinates, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
public TaskGotoPoint(Point3D coordinates, Color color, int size, string title, TaskSeverity severity)
public TaskGotoPoint(Point3D coordinates, Color color, int size, string title, TaskSeverity severity, string drawingFile, string module)
public TaskGotoPoint(Point3D coordinates, Color color, int size, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parameter | Description |
| :--- | :--- |
| `coordinates` | Ground coordinates ([Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md)) on which the drawing window centers. Returned in `Coordinates`. |
| `color` | Icon color. Overloads without `color` use red with alpha 128 (`Color.FromArgb(128, 255, 0, 0)`). |
| `size` | Half the icon's width, in pixels. Overloads without `size` use 6. The constructor does not validate the value. |
| `title` | Task text in the task panel. |
| `severity` | Task severity, from the [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md) enumeration. |
| `drawingFile` | Drawing file to which the task refers. The panel displays it in its file column. |
| `module` | Name of the module that generated the task, for example the command name. |
| `children` | Child tasks. |

The parameterless constructor leaves `Title`, `DrawingFile`, `Module` and `Children` as `null`, `Severity` as `TaskSeverity.Error` and `Coordinates` as the default `Point3D`, with the default color and size. Assign properties after creating the object.

## Properties

| Property | Description |
| :--- | :--- |
| `Point3D Coordinates { get; set; }` | Ground coordinates on which the drawing window centers. |
| `Color Color { get; set; }` | Icon color. |
| `int Size { get; set; }` | Half the icon's width, in pixels. Assigning a negative value throws `ArgumentException`. |

Properties inherited from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` and `Children`.

## Methods

| Method | Description |
| :--- | :--- |
| `void Execute()` | Called by Digi3D.AI when the task is double-clicked. Reads the active drawing window's camera, sets its position to `Coordinates`, without changing scale or orientation, and redraws the window. Throws `NullReferenceException` if no drawing window is open. |

## Example

This command adds an error for each non-deleted point (`Point` entity) in the drawing file with a Z coordinate of 0. Tasks draw a 20-pixel blue triangle at each point; double-clicking a task centers the drawing window on the point:

```csharp
using System.Drawing;
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "PUNTOS_SIN_Z")]
public class PuntosSinZ : Command
{
    public PuntosSinZ()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            foreach (var punto in archivo.OfType<ReadOnlyPoint>().Where(punto => !punto.Deleted))
            {
                if (punto.Coordinate.Z != 0)
                    continue;

                Digi3D.Tasks.Add(new TaskGotoPoint(
                    punto.Coordinate,
                    Color.Blue,
                    10,
                    "Punto con Z = 0",
                    TaskSeverity.Error,
                    archivo.Path,
                    "PUNTOS_SIN_Z"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
