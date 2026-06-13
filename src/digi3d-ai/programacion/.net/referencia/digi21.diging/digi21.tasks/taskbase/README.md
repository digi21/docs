# TaskBase

Espacio de nombres: [Digi21.Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase abstracta sirve como base para especializaciones de [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/).

```csharp
public abstract class TaskBase : ITask
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0)→ TaskBase

Tipos derivados: [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md)

Implementa: [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/)

## Constructores

|  |  |
| :--- | :--- |
| [TaskBase\(\)](constructores.md#taskbase) | Inicializa una nueva instancia de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/). |
| [TaskBase\(string, TaskSeverity\)](constructores.md#taskbase-string-taskseverity) | Inicializa una nueva instancia de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título y parámetro de gravedad. |
| [TaskBase\(string, TaskSeverity, string, string\)](constructores.md#taskbase-string-taskseverity-string-string) | Inicializa una nueva instancia de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo y nombre del módulo. |
| [TaskBase\(string, TaskSeverity, string, string, ITask\[\]\)](constructores.md#taskbase-string-taskseverity-string-string-itask) | Inicializa una nueva instancia de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo, nombre del módulo y subtareas. |

## Propiedades


|  |  |
| :--- | :--- |
| [Children](../itask/propiedades/childs.md) |Devuelve un array subtareas.<br>(Heredado de [ITask](../itask/))|
| [Module](../itask/propiedades/module.md) |Devuelve el nombre del módulo que generó la tarea.<br>(Heredado de [ITask](../itask/))|
| [DrawingFile](../itask/propiedades/drawingfile.md) |Devuelve la ruta del archivo de dibujo que provocó que se generara la tarea.<br>(Heredado de [ITask](../itask/))|
| [Severity](../itask/propiedades/severity.md) |Devuelve un [TaskSeverity](../taskseverity.md)indicando el tipo de tarea.<br>(Heredado de [ITask](../itask/))|
| [Title](../itask/propiedades/title.md) |Devuelve el título de la tarea.<br>(Heredado de [ITask](../itask/))|


## Métodos


|  |  |
| :--- | :--- |
| [Execute()](../itask/metodos/execute.md) |Fuerza la ejecución de la tarea.<br>(Heredado de [ITask](../itask/))|


