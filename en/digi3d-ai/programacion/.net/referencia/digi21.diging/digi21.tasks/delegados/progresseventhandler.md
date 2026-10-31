# ProgressEventHandler
<!-- id: progresseventhandler -->
<!-- origen: 81f97b048808c83f953254f472617d78d73ad555 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Delegate for events reporting an operation's progress percentage, such as the `ProgressChanged` event of [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public delegate void ProgressEventHandler(object sender, ProgressEventArgs e);
```

| Parameter | Description |
| :--- | :--- |
| `sender` | Object raising the event. |
| `e` | [ProgressEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/) with the percentage in `Progress`. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) declares and subscribes to an event of this type.
