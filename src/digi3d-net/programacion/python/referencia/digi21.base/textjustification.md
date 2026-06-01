# TextJustification

Módulo: [digi21.base](README.md)

Justificación de un [Text](text.md): posición del punto de inserción respecto al texto.

| Valor | Posición |
|---|---|
| `SW` | Suroeste (esquina inferior izquierda). |
| `W` | Oeste (centro izquierda). |
| `NW` | Noroeste (esquina superior izquierda). |
| `N` | Norte (centro arriba). |
| `NE` | Noreste (esquina superior derecha). |
| `E` | Este (centro derecha). |
| `SE` | Sureste (esquina inferior derecha). |
| `S` | Sur (centro abajo). |
| `C` | Centro. |

## Ejemplo

```python
from digi21.base import Text, TextJustification

t = Text("Centro", (0, 0, 0), codes=["ROT"], text_justification=TextJustification.C)
```
