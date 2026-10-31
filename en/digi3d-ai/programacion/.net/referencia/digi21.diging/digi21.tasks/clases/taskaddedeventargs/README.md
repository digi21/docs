# TaskAddedEventArgs
<!-- id: taskaddedeventargs -->
<!-- origen: ad501a06d5d1b0062d263ea912023443a0c6fb68 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argument of a [TaskAddedEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/taskaddedeventhandler.md) event: a new task.

```csharp
public class TaskAddedEventArgs : EventArgs
```

Drawing files ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) send it in their `TaskAdded` event with reading and writing warnings and errors. These tasks are [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md) objects.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [TaskAddedEventArgs(ITask)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/constructores.md) | Creates the argument with the task `task`. |

## Properties

| Property | Description |
| :--- | :--- |
| [Task](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/propiedades/task.md) | New task: [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) sends and receives `TaskAddedEventArgs`.
