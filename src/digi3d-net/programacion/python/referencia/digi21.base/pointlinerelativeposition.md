# PointLineRelativePosition

Módulo: [digi21.base](README.md)

Posición de un punto respecto a una [Line](line.md). Lo devuelve el método
`calculate_position_point`.

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
