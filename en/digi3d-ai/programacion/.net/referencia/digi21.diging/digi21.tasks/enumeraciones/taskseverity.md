# TaskSeverity
<!-- id: taskseverity -->
<!-- origen: 2e513c82013a57caf03c85db220d0a3290a632af -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Task severity ([ITask.Severity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/propiedades/severity.md)). The Tasks pane displays a different icon for each value.

```csharp
public enum TaskSeverity
```

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Error` | 0 | Error. The enumeration's default value and the value of `TaskBase.Severity` when the constructor is not given a severity. |
| `Warning` | 1 | Warning. |
| `Message` | 2 | Informational message. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) creates tasks with all three values.
