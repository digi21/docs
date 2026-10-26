# TaskMessageBox
<!-- id: taskmessagebox -->

Espacio de nombres: `Digi21.DigiNG.Plugin.TaskPanel`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tarea del panel de tareas que, al hacer doble clic, muestra un cuadro de mensaje con un texto y el botón Aceptar. Sirve para dar una explicación más larga que el texto de la tarea.

```csharp
public sealed class TaskMessageBox : TaskBase
```

Herencia: [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) → `TaskMessageBox`. Implementa [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

La clase está en el ensamblado `Digi21.DigiNG`, no en `Digi21.DigiNG.Plugin` como el resto de tareas de su espacio de nombres. El paquete NuGet `Digi21.DigiNG.Plugin` depende del paquete `Digi21.DigiNG`, así que una extensión que usa el primero tiene acceso a la clase.

La tarea se añade al panel con [Digi3D.Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md).

## Constructores

```csharp
public TaskMessageBox()
public TaskMessageBox(string title, string description, TaskSeverity severity, string drawingFile, string module)
public TaskMessageBox(string title, string description, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parámetro | Descripción |
| :--- | :--- |
| `title` | Texto de la tarea en el panel de tareas. |
| `description` | Texto del cuadro de mensaje. No hay ninguna propiedad que lo devuelva o lo cambie. |
| `severity` | Gravedad de la tarea, de la enumeración [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |
| `drawingFile` | Archivo de dibujo al que se refiere la tarea. Admite `null`. |
| `module` | Nombre del módulo que ha generado la tarea, por ejemplo el nombre de la orden. Admite `null`. |
| `children` | Tareas hijas. |

El constructor sin parámetros deja la descripción a `null`, así que el cuadro de mensaje se muestra vacío. Para asignar la descripción, usa uno de los dos constructores que reciben el parámetro `description`, porque la descripción solo se puede asignar en el constructor.

## Propiedades

Propiedades heredadas de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/): `Title`, `Severity`, `DrawingFile`, `Module` y `Children`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Execute()` | Digi3D.AI llama a `Execute` cuando haces doble clic en la tarea. `Execute` muestra un cuadro de mensaje modal con la descripción y el botón Aceptar, y retorna cuando el usuario cierra el cuadro de mensaje. |

## Ejemplo

Esta orden añade un aviso por cada código del archivo de dibujo que solo está asignado a entidades eliminadas. Al hacer doble clic en una tarea, un cuadro de mensaje explica el aviso:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.DigiNG.Plugin.TaskPanel;
using Digi21.Tasks;

namespace Ejemplos;

[Command(Name = "CODIGOS_SIN_ENTIDADES")]
public class CodigosSinEntidades : Command
{
    public CodigosSinEntidades()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;
            var usados = archivo
                .Where(entidad => !entidad.Deleted)
                .SelectMany(entidad => entidad.Codes)
                .Select(código => código.Name)
                .ToHashSet();

            var todos = archivo
                .SelectMany(entidad => entidad.Codes)
                .Select(código => código.Name)
                .Distinct();

            foreach (var código in todos.Where(código => !usados.Contains(código)))
            {
                Digi3D.Tasks.Add(new TaskMessageBox(
                    $"Código {código} sin entidades",
                    $"Todas las entidades con el código {código} están eliminadas.",
                    TaskSeverity.Warning,
                    archivo.Path,
                    "CODIGOS_SIN_ENTIDADES"));
            }
            Digi3D.Tasks.Show();

            Dispose();
        };
    }
}
```
