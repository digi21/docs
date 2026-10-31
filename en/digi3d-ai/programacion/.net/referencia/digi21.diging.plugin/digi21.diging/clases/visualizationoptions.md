# VisualizationOptions
<!-- id: visualizationoptions -->
<!-- origen: a0f62a6f6b8d0a5cb926f7987d297266326bfe68 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Drawing window display options: background color, cursor size, filling, shading, deleted entities, patterns, drawing scale and overlap.

```csharp
public sealed class VisualizationOptions
```

The class has no public constructors. Obtain the object through the static [DigiNG.VisualizationOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which returns `null` if no drawing window is open. The object is bound to the drawing window active when it is obtained: when that window closes, all properties throw `ObjectDisposedException`.

Properties with "Application" scope read and write Digi3D.AI variables shared by all drawing windows. Properties with "Window" scope belong to the drawing window.

## Properties

| Property | Scope | Description |
| :--- | :--- | :--- |
| `Color BackgroundColor` | Window | Drawing window's background color. The `get` accessor returns an opaque color; the `set` accessor uses the red, green and blue components and ignores the alpha channel. |
| `int CursorSize` | Window | Cursor size, as assigned by [CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cursor.md). |
| `bool ShowFillInPolygons` | Window | Filling of closed entities, enabled by [FILL IN](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/rellenar.md). |
| `bool EnableShadows` | Window | Drawing of shading. Assigning this property makes Digi3D.AI regenerate the drawing window. |
| `bool ShowDeletedEntities` | Window | Display of entities deleted since the last file compression, enabled by [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md). |
| `bool ShowPattern` | Window | Display of line patterns, enabled by [PATTERN](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/patron.md). |
| `double DrawingScale` | Application | [SCALE_DRAWING](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) variable: scale at which patterns are displayed on screen. Returns 1000 if the variable is undefined. |
| `bool ShowPatternInPhotogrammetricWindow` | Application | [SPATTERN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/patrons.md) variable: display of line patterns in the photogrammetric window. Returns `false` if the variable is undefined. |
| `double Overlap` | Application | [OVERLAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/solape.md) variable: overlap percentage used by window panning commands. Returns 10 if the variable is undefined. |

Assigning `ShowFillInPolygons` or `ShowPattern` does not regenerate the drawing window: the change appears on the next regeneration, for example after calling `DigiNG.RenderScene()`.

## Example

This command enables or disables closed entity filling and regenerates the drawing window:

```csharp
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ALTERNA_RELLENO")]
public class AlternaRelleno : Command
{
    public AlternaRelleno()
    {
        Initialize += (sender, e) =>
        {
            var opciones = DigiNG.VisualizationOptions;
            opciones.ShowFillInPolygons = !opciones.ShowFillInPolygons;

            DigiNG.RenderScene();
            Dispose();
        };
    }
}
```
