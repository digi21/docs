# MusicType
<!-- id: musictype -->
<!-- origen: da2b621f7b67054b5a9ee8875126976d3d40d34c -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Sound played by [Digi3D.Music](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md). These are the sounds Digi3D.AI uses in its own commands.

```csharp
public enum MusicType
```

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Beep` | 0 | Data sound. When output through the computer speaker, a 2500 Hz beep lasting 10 ms. |
| `EndOfLongProcess` | 1 | End-of-command sound. When output through the computer speaker, a 1500 Hz beep lasting 50 ms. |
| `Error` | 2 | Error sound. When output through the computer speaker, three descending beeps lasting 200 ms each. |

If the user has configured sound files instead of the speaker, Digi3D.AI plays the file assigned to each sound type.

## Example

The [Digi3D](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/digi3d.md) example plays `MusicType.EndOfLongProcess`.
