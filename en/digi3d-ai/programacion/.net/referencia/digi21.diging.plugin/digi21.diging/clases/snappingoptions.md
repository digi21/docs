# SnappingOptions
<!-- id: snappingoptions -->
<!-- origen: c6ad7438b0e879415816e75083e5de752cb30a2d -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Static class with snapping options: attaching the cursor to an entity using the snap button.

```csharp
public static class SnappingOptions
```

Each property reads and writes a Digi3D.AI boolean variable. Variables belong to the application: changes affect all drawing windows. All properties throw `NullReferenceException` if no drawing window is open. If a variable is undefined, its property returns `false`.

## Static properties

| Property | Variable | Description |
| :--- | :--- | :--- |
| `bool FinalizeLineWhenSnap` | [SNAP_END](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-fin.md) | Finishes the line being digitized when a snap to another entity is accepted. |
| `bool CutLinesWhenSnap` | [SNAP_CUTS](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-corta.md) | Cuts the line to which the snap is accepted, at the snap point. |
| `bool InsertVertexWhenSnap` | [SNAP_INSERT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-inserta.md) | Inserts a vertex in the snapped line when digitizing lines. |
| `bool AutosearchMode` | [AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md) | Automatic search mode. |
| `bool ExhaustiveAutosearchMode` | [EXHAUSTIVE_AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md) | Exhaustive search mode: prevents snapping to entities whose code is not in the search table. |
| `bool Verify` | [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) | Asks the user to confirm the entity found by snapping. |
| `bool GoToSnap` | [GOTO_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) | Moves the cursor to the snap coordinates. |

## Example

This command enables or disables both cutting and vertex insertion on snapping, and writes the state to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ALTERNA_TENTATIVO_CORTA_INSERTA")]
public class AlternaTentativoCortaInserta : Command
{
    public AlternaTentativoCortaInserta()
    {
        Initialize += (sender, e) =>
        {
            var activar = !SnappingOptions.CutLinesWhenSnap;
            SnappingOptions.CutLinesWhenSnap = activar;
            SnappingOptions.InsertVertexWhenSnap = activar;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine(activar ? "TENTATIVO_CORTA y TENTATIVO_INSERTA activados." : "TENTATIVO_CORTA y TENTATIVO_INSERTA desactivados.");
            Dispose();
        };
    }
}
```
