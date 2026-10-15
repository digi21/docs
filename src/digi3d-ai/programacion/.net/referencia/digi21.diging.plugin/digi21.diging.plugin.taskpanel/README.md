# Digi21.DigiNG.Plugin.TaskPanel
<!-- id: digi21.diging.plugin.taskpanel -->

Tareas para el [panel de tareas](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md) de Digi3D.AI. Cada clase deriva de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) e implementa en `Execute` la acción que Digi3D.AI ejecuta cuando el usuario hace doble clic en la tarea. Las tareas se añaden al panel con `Digi3D.Tasks.Add`.

Las clases están en el ensamblado `Digi21.DigiNG.Plugin`, salvo `TaskMessageBox`, que está en `Digi21.DigiNG`.

## Clases

| Clase | Acción al hacer doble clic |
| :--- | :--- |
| [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) | Resalta una entidad durante unos segundos, sin mover la ventana de dibujo. |
| [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md) | Centra la ventana de dibujo en unas coordenadas y resalta una entidad durante unos segundos. |
| [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) | Centra la ventana de dibujo en unas coordenadas. Si la tarea es un error, Digi3D.AI dibuja un icono en esas coordenadas. |
| [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md) | Muestra un cuadro de mensaje con un texto. |
| [TaskZoomEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md) | Encuadra una entidad en la ventana de dibujo y la resalta durante unos segundos. |
