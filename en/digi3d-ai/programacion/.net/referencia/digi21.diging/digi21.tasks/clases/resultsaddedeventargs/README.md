# ResultsAddedEventArgs
<!-- id: resultsaddedeventargs -->
<!-- origen: 96b6623867c35a8490bdaa28c3dff4682aea38ed -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argument of a [ResultsAddedEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/resultsaddedeventhandler.md) event: informational text from an operation.

```csharp
public class ResultsAddedEventArgs : EventArgs
```

Drawing files ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) send it in their `ResultsAdded` event.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [ResultsAddedEventArgs(string)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/constructores.md) | Creates the argument with the text `message`. |

## Properties

| Property | Description |
| :--- | :--- |
| [Message](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/resultsaddedeventargs/propiedades/message.md) | Informational text. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) sends and receives `ResultsAddedEventArgs`.
