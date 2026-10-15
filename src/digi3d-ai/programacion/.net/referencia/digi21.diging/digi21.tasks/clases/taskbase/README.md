# TaskBase
<!-- id: taskbase -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Clase base abstracta para las tareas: implementa las propiedades de [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) y deja el método `Execute` a la clase derivada.

```csharp
public abstract class TaskBase : ITask
```

Implementa: [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/)

Clases derivadas, directas o indirectas: [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md), [TaskGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskgotopoint.md), [TaskEntityGotoPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskentitygotopoint.md), [TaskAnimateEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskanimateentity.md) y [TaskZoomEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskzoomentity.md).

Los constructores son `protected`: solo una clase derivada puede crear un `TaskBase`. Las propiedades guardan el valor que reciben, sin validarlo.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [TaskBase()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Crea una tarea sin título, con gravedad `Error`. |
| [TaskBase(string, TaskSeverity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Crea una tarea con título y gravedad. |
| [TaskBase(string, TaskSeverity, string, string)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Crea una tarea con título, gravedad, archivo de dibujo y módulo. |
| [TaskBase(string, TaskSeverity, string, string, ITask[])](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/constructores.md) | Crea una tarea con título, gravedad, archivo de dibujo, módulo y subtareas. |

## Propiedades

Las cinco propiedades tienen descriptor de acceso `get` y `set` públicos. El `get` es la implementación de la propiedad de `ITask`.

| Propiedad | Descripción |
| :--- | :--- |
| `ITask[] Children` | Subtareas, o `null`. Consulta [ITask.Children](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/children.md). |
| `string DrawingFile` | Ruta del archivo de dibujo, o `null`. Consulta [ITask.DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/drawingfile.md). |
| `string Module` | Nombre del módulo, o `null`. Consulta [ITask.Module](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/module.md). |
| `TaskSeverity Severity` | Gravedad. Consulta [ITask.Severity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/severity.md). |
| `string Title` | Título, o `null`. Consulta [ITask.Title](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/title.md). |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `abstract void Execute()` | Acción de la tarea. La clase derivada lo implementa. Consulta [ITask.Execute](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/metodos/execute.md). |

## Ejemplo

Este programa define una tarea que escribe su descripción en la consola y una clase que valida códigos y notifica el progreso, los resultados y las tareas con los delegados de `Digi21.Tasks`. Al final muestra el árbol de tareas:

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

// Children puede valer null: una tarea sin subtareas no tiene que crear un array vacío.
static void MuestraTarea(ITask tarea, int nivel)
{
    Console.WriteLine($"{new string(' ', nivel * 2)}[{tarea.Severity}] {tarea.Title} ({tarea.DrawingFile}, {tarea.Module})");
    foreach (var hija in tarea.Children ?? [])
        MuestraTarea(hija, nivel + 1);
}

// Tarea que escribe su descripción en la consola cuando se ejecuta.
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

// Comprueba que los códigos tienen 6 dígitos y notifica el resultado con los delegados de Digi21.Tasks.
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

En una extensión, la tarea `resumen` se añade al panel de tareas con [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md), y el doble clic en una fila llama a `Execute`.
