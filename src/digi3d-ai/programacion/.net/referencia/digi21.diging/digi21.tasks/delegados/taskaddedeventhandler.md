# TaskAddedEventHandler
<!-- id: taskaddedeventhandler -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Delegado de los eventos que notifican una tarea nueva, como el evento `TaskAdded` de [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public delegate void TaskAddedEventHandler(object sender, TaskAddedEventArgs e);
```

| Parámetro | Descripción |
| :--- | :--- |
| `sender` | Objeto que genera el evento. |
| `e` | [TaskAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskaddedeventargs/) con la tarea en `Task`. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) declara un evento de este tipo y se suscribe a él.
