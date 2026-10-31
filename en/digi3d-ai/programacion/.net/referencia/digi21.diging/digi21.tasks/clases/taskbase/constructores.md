# Constructors
<!-- id: constructores-15 -->
<!-- origen: b05d8cdb38be243a9ab29c2693b9f71036131f17 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructors of [TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/). They are `protected`: called only from a derived class's constructor. None validates its parameters or throws exceptions. A property without a constructor parameter is `null`, except `Severity`, which is `TaskSeverity.Error`.

## Overloads

| Constructor | Description |
| :--- | :--- |
| `TaskBase()` | Creates a task without a title, with severity `Error`. |
| `TaskBase(string, TaskSeverity)` | Creates a task with a title and severity. |
| `TaskBase(string, TaskSeverity, string, string)` | Creates a task with a title, severity, drawing file and module. |
| `TaskBase(string, TaskSeverity, string, string, ITask[])` | Creates a task with a title, severity, drawing file, module and subtasks. |

## TaskBase()

```csharp
protected TaskBase()
```

`Title`, `DrawingFile`, `Module` and `Children` are `null`; `Severity` is `TaskSeverity.Error`. The derived class assigns the properties after calling the constructor.

## TaskBase(string, TaskSeverity)

```csharp
protected TaskBase(string title, TaskSeverity severity)
```

| Parameter | Description |
| :--- | :--- |
| `title` | Value of `Title`. |
| `severity` | Value of `Severity`: [TaskSeverity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/enumeraciones/taskseverity.md). |

## TaskBase(string, TaskSeverity, string, string)

```csharp
protected TaskBase(string title, TaskSeverity severity, string drawingFile, string module)
```

| Parameter | Description |
| :--- | :--- |
| `title` | Value of `Title`. |
| `severity` | Value of `Severity`. |
| `drawingFile` | Value of `DrawingFile`: path of the drawing file to which the task refers. |
| `module` | Value of `Module`: name of the module generating the task. |

## TaskBase(string, TaskSeverity, string, string, ITask[])

```csharp
protected TaskBase(string title, TaskSeverity severity, string drawingFile, string module, ITask[] children)
```

| Parameter | Description |
| :--- | :--- |
| `title` | Value of `Title`. |
| `severity` | Value of `Severity`. |
| `drawingFile` | Value of `DrawingFile`. |
| `module` | Value of `Module`. |
| `children` | Value of `Children`: subtasks, or `null`. The constructor stores the array reference, rather than a copy. |

## Example

The `TareaConsola` class in the [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) calls the five-parameter constructor.
