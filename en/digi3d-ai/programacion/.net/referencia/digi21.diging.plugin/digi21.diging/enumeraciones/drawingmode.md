# DrawingMode
<!-- id: drawingmode -->
<!-- origen: fbbb2f263e346e425e83b48bb61fdb5c09c39ede -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Mode used by [DigiNG.DrawEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) to draw an entity in the drawing window.

```csharp
public enum DrawingMode
```

## Values

| Value | Number | Description |
| :--- | :--- | :--- |
| `Draw` | 0 | Draws the entity in its color. |
| `Hide` | 1 | Erases the entity from the screen. The entity remains in the drawing file and becomes visible again on the next window regeneration. |
| `Xor` | 2 | Draws the entity using XOR. Drawing the same entity twice with `Xor` restores the screen to its previous state. |

`DrawEntity` treats any value other than `Draw` or `Hide` as `Xor`.

## Example

This command erases text from the active drawing file from the screen without deleting it from the file. Text becomes visible again on the next drawing window regeneration:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "BORRA_TEXTOS_DE_PANTALLA")]
public class BorraTextosDePantalla : Command
{
    public BorraTextosDePantalla()
    {
        Initialize += (sender, e) =>
        {
            var textos = DigiNG.DrawingFile
                .OfType<ReadOnlyText>()
                .Where(texto => !texto.Deleted)
                .ToList<Entity>();

            DigiNG.DrawEntity(textos, DrawingMode.Hide);
            Dispose();
        };
    }
}
```
