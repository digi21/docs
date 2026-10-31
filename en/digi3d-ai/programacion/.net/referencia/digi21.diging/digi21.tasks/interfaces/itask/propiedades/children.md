# Children
<!-- id: childs -->
<!-- origen: 9b6c0f00b7226eaa61780d40e43a16ef9a8412c1 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Task's subtasks.

```csharp
ITask[] Children { get; }
```

## Property value

`ITask[]`: task's subtasks, or `null` if it has none.

The Tasks pane reads this property once, when the extension adds the task using [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md), and displays each subtask as a child row. Each subtask is processed in the same way, so a subtask can have subtasks of its own. The array cannot contain `null` elements: `Tasks.Add` throws `NullReferenceException` upon reaching a `null` element.

[TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) returns the constructor's `children` parameter value or the last value assigned to `Children`; if `Children` has not received a value, it returns `null`.
