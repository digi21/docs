# ProgressEventArgs
<!-- id: progresseventargs -->
<!-- origen: 2a9696367c634f534fdf073eecf0ec9c8c790b54 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argument of a [ProgressEventHandler](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/delegados/progresseventhandler.md) event: an operation's progress percentage.

```csharp
public class ProgressEventArgs : EventArgs
```

Drawing files ([Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md)) send it in their `ProgressChanged` event.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [ProgressEventArgs(int)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/constructores.md) | Creates the argument with the percentage `progress`. A negative value is stored as 0. |

## Properties

| Property | Description |
| :--- | :--- |
| [Progress](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/propiedades/progress.md) | Progress percentage. Never negative. |

## Example

The [TaskBase example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/taskbase/#example) sends and receives `ProgressEventArgs`.
