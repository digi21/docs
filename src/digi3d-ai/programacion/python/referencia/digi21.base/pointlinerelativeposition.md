# PointLineRelativePosition
<!-- id: pointlinerelativeposition -->

Módulo: [digi21.base](README.md)

Esta enumeración indica la posición de un punto respecto a una [Line](line.md). El método
`calculate_position_point` devuelve un valor de esta enumeración.

| Valor | Significado |
|---|---|
| `Edge` | El punto está en el borde de la línea. |
| `Outside` | El punto está fuera. |
| `Inside` | El punto está dentro. |

## Ejemplo

```python
from digi21.base import PointLineRelativePosition

if linea.calculate_position_point((5, 5, 0)) == PointLineRelativePosition.Inside:
    print("dentro")
```

## Véase también

- [Line](line.md)
