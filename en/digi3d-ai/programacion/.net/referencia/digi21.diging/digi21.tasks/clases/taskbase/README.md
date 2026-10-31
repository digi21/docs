# TaskBase
<!-- id: taskbase -->
<!-- origen: 929a5f6031ee00b0371fe35b77372547e82d7bff -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Abstract base class for tasks: implements the properties of [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) and requires the derived class to implement `Execute`.

```csharp
public abstract class TaskBase : ITask
```

Implements: [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/)

Directly or indirectly derived classes: [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md), [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md), [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md), [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) and [TaskZoomEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md).

Constructors are `protected`: only a derived class can create a `TaskBase`. Properties store the value they receive without validation.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [TaskBase()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Creates a task without a title, with severity `Error`. |
| [TaskBase(string, TaskSeverity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Creates a task with a title and severity. |
| [TaskBase(string, TaskSeverity, string, string)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Creates a task with a title, severity, drawing file and module. |
| [TaskBase(string, TaskSeverity, string, string, ITask[])](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Creates a task with a title, severity, drawing file, module and subtasks. |

## Properties

All five properties have public `get` and `set` accessors. Each property's `get` accessor implements the corresponding `ITask` property.

| Property | Description |
| :--- | :--- |
| `ITask[] Children` | Subtasks, or `null`. See [ITask.Children](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/children.md). |
| `string DrawingFile` | Drawing file path, or `null`. See [ITask.DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/drawingfile.md). |
| `string Module` | Module name, or `null`. See [ITask.Module](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/module.md). |
| `TaskSeverity Severity` | Severity. See [ITask.Severity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/severity.md). |
| `string Title` | Title, or `null`. See [ITask.Title](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/title.md). |

## Methods

| Method | Description |
| :--- | :--- |
| `abstract void Execute()` | Runs the task's action. The derived class implements this method. See [ITask.Execute](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/metodos/execute.md). |

## Example

This program defines a task that writes its description to the console and a class that validates codes and reports progress, results and tasks using `Digi21.Tasks` delegates. Finally, it displays the task tree:

```csharp
using Digi21.Tasks;

var validador = new ValidadorCodigos();
validador.ProgressChanged += (sender, e) => Console.WriteLine($"{e.Progress} %");
validador.ResultsAdded += (sender, e) => Console.WriteLine(e.Message);

var tareas = new List<ITask>();
validador.TaskAdded += (sender, e) => tareas.Add(e.Task);

validador.Valida(["020101", "", "030205", "ABC"], "parcela.bin");

foreach (var tarea in tareas)
    MuestraTarea(tarea, 0);

// Children may be null: a task without subtasks does not need to create an empty array.
static void MuestraTarea(ITask tarea, int nivel)
{
    Console.WriteLine($"{new string(' ', nivel * 2)}[{tarea.Severity}] {tarea.Title} ({tarea.DrawingFile}, {tarea.Module})");
    foreach (var hija in tarea.Children ?? [])
        MuestraTarea(hija, nivel + 1);
}

// Task that writes its description to the console when executed.
sealed class TareaConsola : TaskBase
{
    public string Descripcion { get; }

    public TareaConsola(string titulo, string descripcion, TaskSeverity gravedad, string archivo, ITask[] hijas = null)
        : base(titulo, gravedad, archivo, "ValidadorCodigos", hijas)
    {
        Descripcion = descripcion;
    }

    public override void Execute() => Console.WriteLine(Descripcion);
}

// Check that codes have 6 digits and report the result using Digi21.Tasks delegates.
sealed class ValidadorCodigos
{
    public event ProgressEventHandler ProgressChanged;
    public event ResultsAddedEventHandler ResultsAdded;
    public event TaskAddedEventHandler TaskAdded;

    public void Valida(string[] codigos, string archivo)
    {
        var errores = new List<ITask>();
        for (var i = 0; i < codigos.Length; i++)
        {
            var codigo = codigos[i];
            if (codigo.Length == 0)
                errores.Add(new TareaConsola("Código vacío", $"La entidad {i} no tiene código.", TaskSeverity.Error, archivo));
            else if (codigo.Length != 6 || !codigo.All(char.IsAsciiDigit))
                errores.Add(new TareaConsola($"Código {codigo} no válido", $"El código {codigo} no tiene 6 dígitos.", TaskSeverity.Warning, archivo));

            ProgressChanged?.Invoke(this, new ProgressEventArgs((i + 1) * 100 / codigos.Length));
        }

        ResultsAdded?.Invoke(this, new ResultsAddedEventArgs($"{codigos.Length} códigos revisados, {errores.Count} con problemas."));

        if (errores.Count > 0)
        {
            var resumen = new TareaConsola($"{errores.Count} códigos con problemas", "Revisa las subtareas.", TaskSeverity.Message, archivo, errores.ToArray());
            TaskAdded?.Invoke(this, new TaskAddedEventArgs(resumen));
        }
    }
}
```

In an extension, the `resumen` task is added to the Tasks pane using [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md), and double-clicking a row calls `Execute`.
