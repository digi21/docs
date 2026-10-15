# TaskSeverity
<!-- id: taskseverity -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gravedad de una tarea ([ITask.Severity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/severity.md)). El panel de tareas muestra un icono distinto para cada valor.

```csharp
public enum TaskSeverity
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Error` | 0 | Error. Es el valor por defecto de la enumeración y el de `TaskBase.Severity` si el constructor no recibe la gravedad. |
| `Warning` | 1 | Advertencia. |
| `Message` | 2 | Mensaje informativo. |

## Ejemplo

El [ejemplo de TaskBase](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#ejemplo) crea tareas con los tres valores.
