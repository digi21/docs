# TaskAnimateEntity
<!-- id: taskanimateentity -->

Espacio de nombres: `Digi21.DigiNG.Plugin.TaskPanel`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Tarea del panel de tareas que, al hacer doble clic, resalta una entidad durante unos segundos, sin mover la ventana de dibujo.

```csharp
public class TaskAnimateEntity : TaskBase
```

Herencia: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → `TaskAnimateEntity`. Implementa [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). Clase derivada: [TaskZoomEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md).

La tarea se añade al panel con [Digi3D.Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md).

## Constructores

```csharp
public TaskAnimateEntity()
public TaskAnimateEntity(Entity entity, int seconds, string title, TaskSeverity severity)
public TaskAnimateEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module)
public TaskAnimateEntity(Entity entity, int seconds, string title, TaskSeverity severity, string drawingFile, string module, ITask[] childs)
```

| Parámetro | Descripción |
| :--- | :--- |
| `entity` | [Entidad](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) que se resalta. Se devuelve en `Entity`. |
| `seconds` | Segundos durante los que se resalta la entidad. Se devuelve en `Seconds`. |
| `title` | Texto de la tarea en el panel de tareas. |
| `severity` | Gravedad de la tarea, de la enumeración [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |
| `drawingFile` | Archivo de dibujo al que se refiere la tarea. |
| `module` | Nombre del módulo que ha generado la tarea, por ejemplo el nombre de la orden. |
| `childs` | Tareas hijas. |

El constructor sin parámetros deja `Entity`, `Title`, `DrawingFile`, `Module` y `Children` a `null`, `Seconds` a 0 y `Severity` a `TaskSeverity.Error`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Entity Entity { get; set; }` | Entidad que se resalta. |
| `int Seconds { get; set; }` | Segundos durante los que se resalta la entidad. |

Propiedades heredadas de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` y `Children`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Execute()` | Digi3D.AI lo llama al hacer doble clic en la tarea. Si `Entity` no es `null`, dibuja la entidad como seleccionada durante `Seconds` segundos. Si `Entity` es `null`, no hace nada. Lanza `NullReferenceException` si `Entity` no es `null` y no hay ninguna ventana de dibujo abierta. |

## Ejemplo

Esta orden añade un mensaje por cada texto no eliminado del archivo de dibujo que contiene la cadena que recibe como parámetro. Al hacer doble clic en una tarea, el texto se resalta durante 2 segundos:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "BUSCA_TEXTO")]
public class BuscaTexto : Command
{
    public BuscaTexto()
    {
        Initialize += (sender, e) =>
        {
            if (Args.Length != 1)
            {
                Digi3D.ShowBallon("BUSCA_TEXTO", "Uso: BUSCA_TEXTO=cadena", 3, BallonIcon.Error);
                Dispose();
                return;
            }

            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var textos = archivo
                .OfType<ReadOnlyText>()
                .Where(texto => !texto.Deleted && texto.Txt.Contains(Args[0]));

            foreach (var texto in textos)
            {
                Digi3D.Tasks.Add(new TaskAnimateEntity(
                    texto,
                    2,
                    texto.Txt,
                    TaskSeverity.Message,
                    archivo.Path,
                    "BUSCA_TEXTO"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
