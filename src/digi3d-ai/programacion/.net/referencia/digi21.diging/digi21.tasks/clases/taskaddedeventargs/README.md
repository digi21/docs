# TaskAddedEventArgs
<!-- id: taskaddedeventargs -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argumento de un evento [TaskAddedEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/taskaddedeventhandler.md): tarea nueva.

```csharp
public class TaskAddedEventArgs : EventArgs
```

Los archivos de dibujo ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) lo envían en su evento `TaskAdded` con los avisos y los errores de lectura y escritura. Esas tareas son objetos [TaskMessageBox](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/taskmessagebox.md).

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [TaskAddedEventArgs(ITask)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/constructores.md) | Crea el argumento con la tarea `task`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [Task](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/propiedades/task.md) | Tarea nueva: [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/). |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) envía y recibe `TaskAddedEventArgs`.
