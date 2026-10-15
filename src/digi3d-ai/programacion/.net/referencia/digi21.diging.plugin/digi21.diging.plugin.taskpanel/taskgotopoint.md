# TaskGotoPoint
<!-- id: taskgotopoint -->

Espacio de nombres: `Digi21.DigiNG.Plugin.TaskPanel`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Tarea del panel de tareas que, al hacer doble clic, centra la ventana de dibujo en unas coordenadas. Digi3D.AI dibuja además un icono en esas coordenadas de la ventana de dibujo.

```csharp
public class TaskGotoPoint : TaskBase
```

Herencia: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → `TaskGotoPoint`. Implementa [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). Clase derivada: [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md).

La tarea se añade al panel con [Digi3D.Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md).

## Icono en la ventana de dibujo

Si la tarea tiene `Severity` igual a `TaskSeverity.Error` y se añade directamente al panel (no como hija de otra tarea), Digi3D.AI dibuja en `Coordinates` un triángulo relleno de color `Color`, de `2 × Size` píxeles de ancho y de alto, centrado en las coordenadas. El triángulo no cambia de tamaño con el zoom. `Tasks.Add` copia `Coordinates`, `Color` y `Size` al añadir la tarea: los cambios posteriores de esas propiedades no mueven ni cambian el icono.

## Constructores

```csharp
public TaskGotoPoint()
public TaskGotoPoint(Point3D coordinates, string title, TaskSeverity severity)
public TaskGotoPoint(Point3D coordinates, string title, TaskSeverity severity, string drawingFile, string module)
public TaskGotoPoint(Point3D coordinates, string title, TaskSeverity severity, string drawingFile, string module, ITask[] childs)
public TaskGotoPoint(Point3D coordinates, Color color, int size, string title, TaskSeverity severity)
public TaskGotoPoint(Point3D coordinates, Color color, int size, string title, TaskSeverity severity, string drawingFile, string module)
public TaskGotoPoint(Point3D coordinates, Color color, int size, string title, TaskSeverity severity, string drawingFile, string module, ITask[] childs)
```

| Parámetro | Descripción |
| :--- | :--- |
| `coordinates` | Coordenadas del terreno ([Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md)) en las que se centra la ventana de dibujo. Se devuelven en `Coordinates`. |
| `color` | Color del icono. Las sobrecargas sin `color` usan rojo con alfa 128 (`Color.FromArgb(128, 255, 0, 0)`). |
| `size` | Mitad del ancho del icono, en píxeles. Las sobrecargas sin `size` usan 6. El constructor no comprueba el valor. |
| `title` | Texto de la tarea en el panel de tareas. |
| `severity` | Gravedad de la tarea, de la enumeración [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |
| `drawingFile` | Archivo de dibujo al que se refiere la tarea. El panel lo muestra en su columna de archivo. |
| `module` | Nombre del módulo que ha generado la tarea, por ejemplo el nombre de la orden. |
| `childs` | Tareas hijas. |

El constructor sin parámetros deja `Title`, `DrawingFile`, `Module` y `Children` a `null`, `Severity` a `TaskSeverity.Error` y `Coordinates` a `Point3D` por defecto, con el color y el tamaño por defecto. Asigna las propiedades después de crear el objeto.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Point3D Coordinates { get; set; }` | Coordenadas del terreno en las que se centra la ventana de dibujo. |
| `Color Color { get; set; }` | Color del icono. |
| `int Size { get; set; }` | Mitad del ancho del icono, en píxeles. Asignar un valor negativo lanza `ArgumentException`. |

Propiedades heredadas de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` y `Children`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Execute()` | Digi3D.AI lo llama al hacer doble clic en la tarea. Lee la cámara de la ventana de dibujo activa, le asigna `Coordinates` como posición, sin cambiar la escala ni la orientación, y vuelve a dibujar la ventana. Lanza `NullReferenceException` si no hay ninguna ventana de dibujo abierta. |

## Ejemplo

Esta orden añade un error por cada punto (entidad `Point`) no eliminado del archivo de dibujo que tiene la coordenada Z igual a 0. Las tareas dibujan un triángulo azul de 20 píxeles en cada punto; al hacer doble clic en una tarea, la ventana de dibujo se centra en el punto:

```csharp
using System.Drawing;
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "PUNTOS_SIN_Z")]
public class PuntosSinZ : Command
{
    public PuntosSinZ()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            foreach (var punto in archivo.OfType<ReadOnlyPoint>().Where(punto => !punto.Deleted))
            {
                if (punto.Coordinate.Z != 0)
                    continue;

                Digi3D.Tasks.Add(new TaskGotoPoint(
                    punto.Coordinate,
                    Color.Blue,
                    10,
                    "Punto con Z = 0",
                    TaskSeverity.Error,
                    archivo.Path,
                    "PUNTOS_SIN_Z"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
