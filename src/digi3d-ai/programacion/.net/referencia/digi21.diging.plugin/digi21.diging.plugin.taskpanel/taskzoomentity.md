# TaskZoomEntity
<!-- id: taskzoomentity -->

Espacio de nombres: `Digi21.DigiNG.Plugin.TaskPanel`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Tarea del panel de tareas que, al hacer doble clic, encuadra una entidad en la ventana de dibujo y la resalta durante unos segundos.

```csharp
public class TaskZoomEntity : TaskAnimateEntity
```

Herencia: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) → `TaskZoomEntity`. Implementa [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

## Constructores

```csharp
public TaskZoomEntity()
public TaskZoomEntity(Entity entity, int seconds, string title, TaskSeverity severity)
public TaskZoomEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskZoomEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

Los parámetros y los valores por defecto son los de los constructores de [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md).

## Propiedades

Propiedades heredadas de [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md): `Entity` y `Seconds`; y de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` y `Children`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Execute()` | Digi3D.AI lo llama al hacer doble clic en la tarea. Si `Entity` es `null`, no hace nada. Si no, lee la cámara de la ventana de dibujo activa y le asigna como posición el centro (`Center`) de la entidad. Si la cámara es ortográfica y las coordenadas mínimas y máximas de la entidad son válidas (`Valid`), ajusta además el ancho de la vista a `Xmax - Xmin` y el alto a `Ymax - Ymin`. Después vuelve a dibujar la ventana y dibuja la entidad como seleccionada durante `Seconds` segundos. Lanza `NullReferenceException` si `Entity` no es `null` y no hay ninguna ventana de dibujo abierta. |

La vista se ajusta a la caja de la entidad sin margen. Para una entidad con anchura o altura 0, como un punto, la cámara recibe un ancho o un alto de vista 0; para esas entidades usa [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md), que centra la ventana sin cambiar la escala.

## Ejemplo

Esta orden añade un error por cada polígono no eliminado del archivo de dibujo cuya área es menor que el valor que recibe como parámetro. Al hacer doble clic en una tarea, la ventana de dibujo encuadra el polígono y lo resalta durante 2 segundos:

```csharp
using System.Globalization;
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "POLIGONOS_PEQUENOS")]
public class PoligonosPequenos : Command
{
    public PoligonosPequenos()
    {
        Initialize += (sender, e) =>
        {
            if (Args.Length != 1 || !double.TryParse(Args[0], CultureInfo.InvariantCulture, out var áreaMínima))
            {
                Digi3D.ShowBallon("POLIGONOS_PEQUENOS", "Uso: POLIGONOS_PEQUENOS=área", 3, BallonIcon.Error);
                Dispose();
                return;
            }

            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var pequeños = archivo
                .OfType<ReadOnlyPolygon>()
                .Where(polígono => !polígono.Deleted && polígono.Area < áreaMínima);

            foreach (var polígono in pequeños)
            {
                Digi3D.Tasks.Add(new TaskZoomEntity(
                    polígono,
                    2,
                    $"Polígono de área {polígono.Area:F2}",
                    TaskSeverity.Error,
                    archivo.Path,
                    "POLIGONOS_PEQUENOS"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```

El ejemplo de [Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md) también usa `TaskZoomEntity`.
