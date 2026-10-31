# TaskAnimateEntity
<!-- id: taskanimateentity -->
<!-- origen: c30c189b9823459c5e8873cbc282e9fc884a4a40 -->

Namespace: `Digi21.DigiNG.Plugin.TaskPanel`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Task panel task that, when double-clicked, highlights an entity for a few seconds without moving the drawing window.

```csharp
public class TaskAnimateEntity : TaskBase
```

Inheritance: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → `TaskAnimateEntity`. Implements [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). Derived class: [TaskZoomEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md).

Add the task to the panel through [Digi3D.Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md).

## Constructors

```csharp
public TaskAnimateEntity()
public TaskAnimateEntity(Entity entity, int seconds, string title, TaskSeverity severity)
public TaskAnimateEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskAnimateEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parameter | Description |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) to highlight. Returned in `Entity`. |
| `seconds` | Number of seconds to highlight the entity. Returned in `Seconds`. |
| `title` | Task text in the task panel. |
| `severity` | Task severity, from the [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md) enumeration. |
| `drawingFile` | Drawing file to which the task refers. |
| `module` | Name of the module that generated the task, for example the command name. |
| `children` | Child tasks. |

The parameterless constructor leaves `Entity`, `Title`, `DrawingFile`, `Module` and `Children` as `null`, `Seconds` as 0 and `Severity` as `TaskSeverity.Error`.

## Properties

| Property | Description |
| :--- | :--- |
| `Entity Entity { get; set; }` | Entity to highlight. |
| `int Seconds { get; set; }` | Number of seconds to highlight the entity. |

Properties inherited from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` and `Children`.

## Methods

| Method | Description |
| :--- | :--- |
| `void Execute()` | Called by Digi3D.AI when the task is double-clicked. If `Entity` is not `null`, draws the entity as selected for `Seconds` seconds. If `Entity` is `null`, does nothing. Throws `NullReferenceException` if `Entity` is not `null` and no drawing window is open. |

## Example

This command receives a string as a parameter and adds a message for each non-deleted text belonging to the drawing file and containing that string. Double-clicking a task makes Digi3D.AI highlight the task's text for 2 seconds:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "BUSCA_TEXTO")]
public class BuscaTexto : Command
{
    public BuscaTexto()
    {
        Initialize += (sender, e) =>
        {
            if (Args.Length != 1)
            {
                Digi3D.ShowBallon("BUSCA_TEXTO", "Uso: BUSCA_TEXTO=cadena", 3, BallonIcon.Error);
                Dispose();
                return;
            }

            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var textos = archivo
                .OfType<ReadOnlyText>()
                .Where(texto => !texto.Deleted && texto.Txt.Contains(Args[0]));

            foreach (var texto in textos)
            {
                Digi3D.Tasks.Add(new TaskAnimateEntity(
                    texto,
                    2,
                    texto.Txt,
                    TaskSeverity.Message,
                    archivo.Path,
                    "BUSCA_TEXTO"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
