# ResultsAddedEventHandler
<!-- id: resultsaddedeventhandler -->
<!-- origen: fa32eed258204d08b66feb435795b082236cbbc2 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Delegate for events reporting informational text, such as the `ResultsAdded` event of [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public delegate void ResultsAddedEventHandler(object sender, ResultsAddedEventArgs e);
```

| Parameter | Description |
| :--- | :--- |
| `sender` | Object raising the event. |
| `e` | [ResultsAddedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/) with the text in `Message`. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) declares and subscribes to an event of this type.
