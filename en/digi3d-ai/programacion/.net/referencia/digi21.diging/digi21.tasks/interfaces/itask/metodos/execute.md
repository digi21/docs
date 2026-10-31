# Execute
<!-- id: execute -->
<!-- origen: 8ba91ac8d211fcf545435773a89c20d4c4c584ff -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Runs the task's action.

```csharp
void Execute();
```

The Tasks pane calls this method when you double-click the task row. Each implementation determines the action. For example, [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md) displays a message box with the task description, and [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) moves the drawing window to coordinates.

In [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/), `Execute` is abstract: each derived class implements it.

If `Execute` throws an exception while handling the double-click, the Tasks pane catches it and displays the message from `InnerException` in a message box, or the exception's own message if `InnerException` is `null`. The exception does not propagate.
