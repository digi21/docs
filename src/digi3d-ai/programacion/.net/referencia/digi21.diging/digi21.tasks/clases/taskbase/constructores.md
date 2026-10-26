# Constructores
<!-- id: constructores-15 -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructores de [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/). Son `protected`: solo se llaman desde el constructor de una clase derivada. Ningún constructor valida sus parámetros ni lanza excepciones. Una propiedad sin parámetro en el constructor vale `null`, salvo `Severity`, que vale `TaskSeverity.Error`.

## Sobrecargas

| Constructor | Descripción |
| :--- | :--- |
| `TaskBase()` | Crea una tarea sin título, con gravedad `Error`. |
| `TaskBase(string, TaskSeverity)` | Crea una tarea con título y gravedad. |
| `TaskBase(string, TaskSeverity, string, string)` | Crea una tarea con título, gravedad, archivo de dibujo y módulo. |
| `TaskBase(string, TaskSeverity, string, string, ITask[])` | Crea una tarea con título, gravedad, archivo de dibujo, módulo y subtareas. |

## TaskBase()

```csharp
protected TaskBase()
```

`Title`, `DrawingFile`, `Module` y `Children` valen `null`; `Severity` vale `TaskSeverity.Error`. La clase derivada asigna las propiedades después de llamar al constructor.

## TaskBase(string, TaskSeverity)

```csharp
protected TaskBase(string title, TaskSeverity severity)
```

| Parámetro | Descripción |
| :--- | :--- |
| `title` | Valor de `Title`. |
| `severity` | Valor de `Severity`: [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |

## TaskBase(string, TaskSeverity, string, string)

```csharp
protected TaskBase(string title, TaskSeverity severity, string drawingFile, string module)
```

| Parámetro | Descripción |
| :--- | :--- |
| `title` | Valor de `Title`. |
| `severity` | Valor de `Severity`. |
| `drawingFile` | Valor de `DrawingFile`: ruta del archivo de dibujo al que se refiere la tarea. |
| `module` | Valor de `Module`: nombre del módulo que genera la tarea. |

## TaskBase(string, TaskSeverity, string, string, ITask[])

```csharp
protected TaskBase(string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parámetro | Descripción |
| :--- | :--- |
| `title` | Valor de `Title`. |
| `severity` | Valor de `Severity`. |
| `drawingFile` | Valor de `DrawingFile`. |
| `module` | Valor de `Module`. |
| `children` | Valor de `Children`: subtareas, o `null`. El constructor guarda la referencia al array, no una copia. |

## Ejemplo

La clase `TareaConsola` del [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) llama al constructor de cinco parámetros.
