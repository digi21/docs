# Tasks
<!-- id: tasks -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Panel de tareas de Digi3D.AI: la lista de errores, avisos y mensajes que el usuario recorre y ejecuta con un doble clic.

```csharp
public class Tasks
```

La clase no tiene constructores públicos. La instancia se obtiene con [Digi3D.Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md).

Cada tarea es un objeto que implementa [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). El panel muestra su `Title`, su `Severity`, su `DrawingFile` y su `Module`, y muestra como tareas hijas las tareas de `Children`. Al hacer doble clic en una tarea, Digi3D.AI llama a su método `Execute`. Si `Execute` lanza una excepción, Digi3D.AI muestra su mensaje (el de `InnerException`, si existe) en un cuadro de mensaje. El espacio de nombres [Digi21.DigiNG.Plugin.TaskPanel](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/) tiene tareas que desplazan la ventana de dibujo a unas coordenadas o a una entidad; para otra acción, deriva una clase de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/).

Digi3D.AI vacía el panel de tareas al cerrar un archivo de dibujo.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Add(ITask task)` | Añade `task` al panel de tareas. Las tareas hijas se leen de `task.Children` en esta llamada: las tareas que se añadan a `Children` después no aparecen en el panel. Si `task` es un [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md) (o una clase derivada), el panel guarda además sus coordenadas, su color y su tamaño para dibujar el icono en la ventana de dibujo. Lanza `NullReferenceException` si `task` es `null`. |
| `void Clear()` | Elimina todas las tareas del panel. |
| `void Show()` | Muestra el panel de tareas. |
| `void Hide()` | Oculta el panel de tareas. |
| `void ToggleDocking()` | Alterna el panel de tareas entre acoplado y flotante. |

Todos los métodos lanzan `NullReferenceException` si no se ejecutan dentro de Digi3D.AI.

## Ejemplo

Esta orden añade al panel de tareas un error por cada línea no eliminada de menos de 3 vértices. Al hacer doble clic en una tarea, la ventana de dibujo encuadra la línea y la resalta durante 2 segundos:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "LINEAS_CORTAS")]
public class LineasCortas : Command
{
    public LineasCortas()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            Digi3D.Tasks.Clear();
            foreach (var línea in archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted))
            {
                if (línea.Points.Count >= 3)
                    continue;

                Digi3D.Tasks.Add(new TaskZoomEntity(
                    línea,
                    2,
                    $"Línea con {línea.Points.Count} vértices",
                    TaskSeverity.Error,
                    archivo.Path,
                    "LINEAS_CORTAS"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
