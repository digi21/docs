# Constructores

Espacio de nombres: [Digi21.Tasks](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Inicializa una nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/).

## Sobrecargas

|  |  |
| :--- | :--- |
| [TaskBase\(\)](constructores.md#taskbase) | Inicializa una nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/). |
| [TaskBase\(string, TaskSeverity\)](constructores.md#taskbase-string-taskseverity) | Inicializa una nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título y parámetro de gravedad. |
| [TaskBase\(string, TaskSeverity, string, string\)](constructores.md#taskbase-string-taskseverity-string-string) | Inicializa una nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo y nombre del módulo. |
| [TaskBase\(string, TaskSeverity, string, string, ITask\[\]\)](constructores.md#taskbase-string-taskseverity-string-string-itask) | Inicializa una nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo, nombre del módulo y subtareas. |

## TaskBase\(\)

Inicializa une nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/).

```csharp
public TaskBase()
```

## TaskBase\(string, TaskSeverity\)

Inicializa une nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título y parámetro de gravedad.

```csharp
public TaskBase(string title, TaskSeverity severity)
```

### Parámetros

`title` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Título de la tarea.

`severity` [TaskSeverity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md)  
Gravedad de la tarea.

## TaskBase\(string, TaskSeverity, string, string\)

Inicializa une nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo y nombre del módulo.

```csharp
public TaskBase(string title, TaskSeverity severity, string drawingFile, string module)
```

`title` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Título de la tarea.

`severity` [TaskSeverity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md)  
Gravedad de la tarea.

`drawingFile` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Ruta al archivo de dibujo en el que se ha producido el escenario que ha desencadenado la creación de esta tarea.

`module` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del módulo que ha generado la tarea.

## TaskBase\(string, TaskSeverity, string, string, ITask\[\]\)

Inicializa une nueva instancia de [TaskBase](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) asignándole un título, parámetro de gravedad, nombre de archivo de dibujo, nombre del módulo y subtareas.

```text
public TaskBase(string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

`title` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Título de la tarea.

`severity` [TaskSeverity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md)  
Gravedad de la tarea.

`drawingFile` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Ruta al archivo de dibujo en el que se ha producido el escenario que ha desencadenado la creación de esta tarea.

`module` [String](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=net-5.0)  
Nombre del módulo que ha generado la tarea.

`children` [ITask\[\]](https://docs.microsoft.com/en-us/dotnet/api/system.array?view=net-5.0)  
Subtareas.



