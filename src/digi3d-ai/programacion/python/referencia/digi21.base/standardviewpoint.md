# StandardViewpoint

Módulo: [digi21.base](README.md)

Punto de vista estándar de una [Camera](camera.md).

| Valor | Vista |
|---|---|
| `Top` | Arriba (cenital). |
| `Bottom` | Abajo. |
| `Left` | Izquierda. |
| `Right` | Derecha. |
| `Front` | Frontal. |
| `Back` | Trasera. |
| `SW` | Suroeste. |
| `SE` | Sureste. |
| `NE` | Noreste. |
| `NW` | Noroeste. |
| `Free` | Libre. |

## Ejemplo

```python
from digi21.base import Camera, StandardViewpoint

camara = Camera("vista cenital")
camara.rotate_standard(StandardViewpoint.Top)
```

## Véase también

- [Camera](camera.md)
