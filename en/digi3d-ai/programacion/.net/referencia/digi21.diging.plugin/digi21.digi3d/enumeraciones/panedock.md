# PaneDock
<!-- id: panedock -->
<!-- origen: 3fab6d96b4e247b114acc379b7c878b1d087c1e9 -->

Namespace: `Digi21.Digi3D`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Edge of Digi3D.AI's main window where a pane docks. Used by [Panes.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md), [Pane.DockPane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) and [Pane.DockSidePane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md).

```csharp
public enum PaneDock
```

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Left` | 0 | Left edge. |
| `Top` | 1 | Top edge. |
| `Right` | 2 | Right edge. |
| `Bottom` | 3 | Bottom edge. A value outside the enumeration also docks the pane at the bottom. |

## Example

The [Panes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md) and [Pane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) examples use `PaneDock.Left` and `PaneDock.Right`.
