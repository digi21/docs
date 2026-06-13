# Complex

Módulo: [digi21.base](README.md)

Un elemento complejo que agrupa otras geometrías como hijas. Hereda de
[Geometry](geometry.md). Se comporta como una secuencia de sus geometrías hijas: admite
`len()`, indexación y recorrido.

```python
Complex(codes=())
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `codes` | iterable | Códigos (`FeatureCode` o `str`). |

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `closed` | `bool` | Indica si el complejo está cerrado. |
| `geometries` | `list[Geometry]` | Lista de geometrías hijas. |

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `add(geometry)` | — | Añade una geometría. La propiedad pasa al complejo. |
| `insert(position, geometry)` | — | Inserta una geometría en la posición indicada. |
| `remove(geometry)` | `bool` |Elimina la geometría indicada<br>devuelve `True` si se eliminó.|
| `clear()` | — | Elimina todas las geometrías. |
| `explode()` | `list` | Devuelve clones independientes de las geometrías que lo componen. |

## Acceso a las geometrías hijas

| Operación | Descripción |
|---|---|
| `len(complex)` | Número de geometrías hijas. |
| `complex[i]` | Geometría hija en la posición `i`. |
| `for g in complex:` | Recorre las geometrías hijas. |

## Ejemplo

```python
from digi21.base import Complex, Line, Point

bloque = Complex(["BLOQUE"])
bloque.add(Line(["MURO"], [(0, 0, 0), (10, 0, 0)]))
bloque.add(Point((5, 5, 0), codes=["POSTE"]))

for hija in bloque:
    print(type(hija).__name__)
```

> **Propiedad de la memoria:** al añadir una geometría con `add`/`insert`, la propiedad
> pasa al complejo. `explode()` devuelve clones independientes.

## Véase también

- [Geometry](geometry.md)
