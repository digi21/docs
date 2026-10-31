# Constructors
<!-- id: constructores-14 -->
<!-- origen: a2c62cf66c9ec148a0905934011652395202b75c -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Creates a [TaskAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/) with a task.

```csharp
public TaskAddedEventArgs(ITask task)
```

| Parameter | Description |
| :--- | :--- |
| `task` | Task returned by the `Task` property: [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). The constructor does not validate it: `null` is accepted. |
