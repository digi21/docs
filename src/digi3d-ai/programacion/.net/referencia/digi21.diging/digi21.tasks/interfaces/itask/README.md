# ITask
<!-- id: itask -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tarea del [panel de tareas](/digi3d-ai/referencia/paneles/tareas.md) de Digi3D.AI: un error, una advertencia o un mensaje con una acción asociada.

```csharp
public interface ITask
```

Implementaciones: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) y sus clases derivadas, como [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md).

Una extensión añade una tarea al panel con [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md). El panel usa los miembros así:

- `Title`, `DrawingFile` y `Module` son las columnas de la fila de la tarea.
- `Severity` decide el icono de la fila.
- `Children` se lee una sola vez, en la llamada a `Tasks.Add`: cada subtarea es una fila hija de la tarea. Un cambio de `Children` posterior a esa llamada no cambia el panel.
- `Execute` se llama cuando el operador hace doble clic en la fila.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [Children](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/children.md) | Subtareas de la tarea, o `null` si no tiene. |
| [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/drawingfile.md) | Ruta del archivo de dibujo al que se refiere la tarea. |
| [Module](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/module.md) | Nombre del módulo que generó la tarea. |
| [Severity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/severity.md) | Gravedad de la tarea: [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |
| [Title](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/title.md) | Título de la tarea. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [Execute()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/metodos/execute.md) | Ejecuta la acción de la tarea. El panel de tareas lo llama con un doble clic en la fila. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) recorre un árbol de tareas con los miembros de `ITask`.
