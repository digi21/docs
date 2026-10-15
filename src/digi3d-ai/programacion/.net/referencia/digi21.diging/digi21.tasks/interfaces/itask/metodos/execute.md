# Execute
<!-- id: execute -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Ejecuta la acción de la tarea.

```csharp
void Execute();
```

El panel de tareas llama a este método cuando el operador hace doble clic en la fila de la tarea. Cada implementación decide la acción. Por ejemplo, [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md) muestra un cuadro de mensaje con la descripción de la tarea, y [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) desplaza la ventana de dibujo a unas coordenadas.

En [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/), `Execute` es abstracto: cada clase derivada lo implementa.

Si `Execute` lanza una excepción durante el doble clic, el panel de tareas la captura y muestra en un cuadro de mensaje el mensaje de `InnerException`, o el de la excepción si `InnerException` es `null`. La excepción no se propaga.
