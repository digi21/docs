# Polygon

Módulo: [digi21.base](README.md)

Un polígono: una línea cerrada que además puede tener **huecos**. Hereda de
[Line](line.md) (y por tanto de [Geometry](geometry.md)), así que dispone de todas sus
propiedades y métodos.

```python
Polygon(codes, coordinates=[])
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `codes` | iterable | Códigos (`FeatureCode` o `str`). |
| `coordinates` | `list[tuple]` | Lista de vértices `(x, y, z)`. |

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `area` | `float` | Área del polígono. |
| `interior_point` | `tuple` | Coordenadas `(x, y, z)` de un punto interior. |
| `holes` | `list[Line]` | Lista de líneas que son los huecos del polígono. |

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `add_hole(hole)` | — | Añade una [Line](line.md) como hueco. La propiedad pasa al polígono. |
| `insert_hole(position, hole)` | — | Inserta una [Line](line.md) como hueco en la posición indicada. |
| `remove_hole(hole)` | `bool` |Elimina el hueco indicado<br>devuelve `True` si se eliminó.|
| `clear_holes()` | — | Elimina todos los huecos. |
| `explode()` | `list` | Devuelve clones independientes de las geometrías que lo componen. |

## Ejemplo

```python
from digi21.base import Polygon, Line

parcela = Polygon(["PARC"], [(0, 0, 0), (100, 0, 0), (100, 100, 0), (0, 100, 0)])

patio = Line(["PARC"], [(40, 40, 0), (60, 40, 0), (60, 60, 0), (40, 60, 0)])
patio.close()
parcela.add_hole(patio)

print(parcela.area)
```

> **Propiedad de la memoria:** al añadir un hueco con `add_hole`/`insert_hole`, la
> propiedad de la línea pasa al polígono. `explode()` devuelve clones independientes.

## Véase también

- [Line](line.md), [Geometry](geometry.md)
