# Children
<!-- id: childs -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Subtareas de la tarea.

```csharp
ITask[] Children { get; }
```

## Valor de la propiedad

`ITask[]`: subtareas de la tarea, o `null` si la tarea no tiene subtareas.

El panel de tareas lee esta propiedad una vez, cuando la extensión añade la tarea con [Tasks.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/tasks.md), y muestra cada subtarea como una fila hija. Cada subtarea se procesa igual, así que una subtarea puede tener sus propias subtareas. El array no puede contener elementos `null`: `Tasks.Add` lanza `NullReferenceException` al llegar a un elemento `null`.

[TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/) devuelve el valor del parámetro `children` del constructor o el último valor asignado; sin ninguno de los dos, devuelve `null`.
