# Digi21.DigiNG.Plugin.TaskPanel
<!-- id: digi21.diging.plugin.taskpanel -->
<!-- origen: 86a7336fca631faf49b638ba09ee31bd9a94dbd4 -->

Tasks for Digi3D.AI's [task panel](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md). Each class derives from [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) and implements in `Execute` the action Digi3D.AI runs when the user double-clicks the task. Tasks are added to the panel through `Digi3D.Tasks.Add`.

The classes are in the `Digi21.DigiNG.Plugin` assembly, except `TaskMessageBox`, which is in `Digi21.DigiNG`.

## Classes

| Class | Action on double-click |
| :--- | :--- |
| [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) | Highlights an entity for a few seconds without moving the drawing window. |
| [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md) | Centers the drawing window on coordinates and highlights an entity for a few seconds. |
| [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) | Centers the drawing window on coordinates. If the task is an error, Digi3D.AI draws an icon at those coordinates. |
| [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md) | Displays a message box with text. |
| [TaskZoomEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md) | Frames an entity in the drawing window and highlights it for a few seconds. |
