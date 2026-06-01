# Point

Módulo: [digi21.base](README.md)

Un punto. Hereda de [Geometry](geometry.md). Internamente tiene un único vértice.

```python
Point(coordinates, codes=(), rotation=0.0, scale=(1.0, 1.0, 1.0))
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `coordinates` | `tuple` | Coordenadas `(x, y, z)`. |
| `codes` | iterable | Códigos (`FeatureCode` o `str`). |
| `rotation` | `float` | Rotación. |
| `scale` | `tuple` | Escala `(x, y, z)`. |

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `rotation` | `float` | L/E | Rotación del punto. |
| `scale` | `tuple` | L/E | Escala `(x, y, z)`. |

Hereda además todas las propiedades y métodos de [Geometry](geometry.md).

## Ejemplo

```python
from digi21.base import Point

p = Point((100.0, 200.0, 50.0), codes=["EDIF"], rotation=0.0)
```

## Véase también

- [Geometry](geometry.md)
