# TaskEntityGotoPoint
<!-- id: taskentitygotopoint -->

Espacio de nombres: `Digi21.DigiNG.Plugin.TaskPanel`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Tarea del panel de tareas que, al hacer doble clic, centra la ventana de dibujo en unas coordenadas y resalta una entidad durante unos segundos. Sirve para señalar un punto concreto de una entidad, por ejemplo el extremo de una línea que no llega a otra.

```csharp
public class TaskEntityGotoPoint : TaskGotoPoint
```

Herencia: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) → `TaskEntityGotoPoint`. Implementa [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

Como deriva de `TaskGotoPoint`, Digi3D.AI dibuja el icono de la tarea en `Coordinates` en las mismas condiciones que para `TaskGotoPoint`.

## Constructores

```csharp
public TaskEntityGotoPoint()
public TaskEntityGotoPoint(Point3D coordinates, Entity entity, int seconds, string title, TaskSeverity severity)
public TaskEntityGotoPoint(Point3D coordinates, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskEntityGotoPoint(Point3D coordinates, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
public TaskEntityGotoPoint(Point3D coordinates, Color color, int size, Entity entity, int seconds, string title, TaskSeverity severity)
public TaskEntityGotoPoint(Point3D coordinates, Color color, int size, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskEntityGotoPoint(Point3D coordinates, Color color, int size, Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parámetro | Descripción |
| :--- | :--- |
| `coordinates`, `color`, `size`, `title`, `severity`, `drawingFile`, `module`, `children` | Los mismos que en los constructores de [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md), con los mismos valores por defecto. |
| `entity` | [Entidad](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) que se resalta. Se devuelve en `Entity`. |
| `seconds` | Segundos durante los que se resalta la entidad. Se devuelve en `Seconds`. |

El constructor sin parámetros deja `Entity` a `null` y `Seconds` a 0, además de los valores que deja el constructor sin parámetros de `TaskGotoPoint`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Entity Entity { get; set; }` | Entidad que se resalta. |
| `int Seconds { get; set; }` | Segundos durante los que se resalta la entidad. |

Propiedades heredadas de [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md): `Coordinates`, `Color` y `Size`; y de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` y `Children`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Execute()` | Digi3D.AI lo llama al hacer doble clic en la tarea. Centra la ventana de dibujo en `Coordinates`, como `TaskGotoPoint.Execute`, y, si `Entity` no es `null`, dibuja la entidad como seleccionada durante `Seconds` segundos. Lanza `NullReferenceException` si no hay ninguna ventana de dibujo abierta. |

## Ejemplo

Esta orden añade un aviso por cada línea abierta no eliminada del archivo de dibujo. Al hacer doble clic en una tarea, la ventana de dibujo se centra en el último vértice de la línea y resalta la línea durante 3 segundos:

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
