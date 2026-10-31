# TaskAddedEventHandler
<!-- id: taskaddedeventhandler -->
<!-- origen: d8fb6011ba299acb12511beff3e92c62e1ad1de9 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Delegate for events reporting a new task, such as the `TaskAdded` event of [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public delegate void TaskAddedEventHandler(object sender, TaskAddedEventArgs e);
```

| Parameter | Description |
| :--- | :--- |
| `sender` | Object raising the event. |
| `e` | [TaskAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/) with the task in `Task`. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) declares and subscribes to an event of this type.
