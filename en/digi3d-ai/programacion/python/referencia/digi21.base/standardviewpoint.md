# StandardViewpoint
<!-- id: standardviewpoint -->
<!-- origen: efeeace5e698c44815eafea72e9e2ee4573f4ebc -->

Module: [digi21.base](README.md)

Standard [Camera](camera.md) viewpoint.

| Value | View |
|---|---|
| `Top` | Top (overhead) |
| `Bottom` | Bottom |
| `Left` | Left |
| `Right` | Right |
| `Front` | Front |
| `Back` | Back |
| `SW` | Southwest |
| `SE` | Southeast |
| `NE` | Northeast |
| `NW` | Northwest |
| `Free` | Free |

## Example

```python
from digi21.base import Camera, StandardViewpoint

camara = Camera("vista cenital")
camara.rotate_standard(StandardViewpoint.Top)
```

## See also

* [Camera](camera.md)
