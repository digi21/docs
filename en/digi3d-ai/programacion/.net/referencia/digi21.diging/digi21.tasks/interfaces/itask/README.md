# ITask
<!-- id: itask -->
<!-- origen: 565793fa9c9c2a3714f5b1fdb159eb974eafa3aa -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Task in the Digi3D.AI [Tasks pane](/digi3d-ai/referencia/paneles/tareas.md): an error, warning or message with an associated action.

```csharp
public interface ITask
```

Implementations: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) and its derived classes, such as [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md).

An extension adds a task to the pane using [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md). The pane uses the members as follows:

- The pane displays `Title`, `DrawingFile` and `Module` in the task row's columns.
- The pane determines the row's icon from `Severity`.
- `Children` is read only once, in the call to `Tasks.Add`: each subtask is a child row of the task. Changing `Children` after that call does not change the pane.
- The pane calls `Execute` when you double-click the task row.

## Properties

| Property | Description |
| :--- | :--- |
| [Children](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/children.md) | Task's subtasks, or `null` if it has none. |
| [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/drawingfile.md) | Path of the drawing file to which the task refers. |
| [Module](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/module.md) | Name of the module that generated the task. |
| [Severity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/severity.md) | Task severity: [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |
| [Title](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/title.md) | Task title. |

## Methods

| Method | Description |
| :--- | :--- |
| [Execute()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/metodos/execute.md) | Runs the task's action. The Tasks pane calls it on a double-click in the row. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) traverses a task tree using the members of `ITask`.
