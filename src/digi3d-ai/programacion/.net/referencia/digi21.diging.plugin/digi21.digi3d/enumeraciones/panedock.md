# PaneDock
<!-- id: panedock -->

Espacio de nombres: `Digi21.Digi3D`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Borde de la ventana principal de Digi3D.AI donde se acopla un panel. Lo usan [Panes.Add](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md), [Pane.DockPane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) y [Pane.DockSidePane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md).

```csharp
public enum PaneDock
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Left` | 0 | Borde izquierdo. |
| `Top` | 1 | Borde superior. |
| `Right` | 2 | Borde derecho. |
| `Bottom` | 3 | Borde inferior. Un valor que no pertenece a la enumeración también acopla el panel abajo. |

## Ejemplo

Los ejemplos de [Panes](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/panes.md) y de [Pane](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/clases/pane.md) usan `PaneDock.Left` y `PaneDock.Right`.
