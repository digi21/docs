# Polygon
<!-- id: polygon-2 -->
<!-- origen: d838c955a1410b551bc60b528671585af0b966f0 -->

Module: [digi21.base](README.md)

A polygon: a closed line that can also have **holes**. Inherits from [Line](line.md) (and therefore [Geometry](geometry.md)), including all their properties and methods.

```python
Polygon(codes, coordinates=[])
```

| Argument | Type | Description |
|---|---|---|
| `codes` | iterable | Codes (`FeatureCode` or `str`) |
| `coordinates` | `list[tuple]` | `(x, y, z)` vertex list |

## Properties

| Property | Type | Description |
|---|---|---|
| `area` | `float` | Polygon area |
| `interior_point` | `tuple` | `(x, y, z)` coordinates of an interior point |
| `holes` | `list[Line]` | Polygon hole line list |

## Methods

| Method | Returns | Description |
|---|---|---|
| `add_hole(hole)` | — | Add a [Line](line.md) as a hole, transferring ownership to the polygon |
| `insert_hole(position, hole)` | — | Insert a [Line](line.md) hole from position 0 through the hole count, appending at that count. Raise `ValueError` if read-only or `hole` is `None`, or `IndexError` if `position` exceeds the hole count |
| `remove_hole(hole)` | `bool` | Remove the specified hole.<br>Return `True` if removed |
| `clear_holes()` | — | Remove all holes |
| `explode()` | `list` | Return independent clones of component geometries |

## Example

```python
from digi21.base import Polygon, Line

parcela = Polygon(["PARC"], [(0, 0, 0), (100, 0, 0), (100, 100, 0), (0, 100, 0)])

patio = Line(["PARC"], [(40, 40, 0), (60, 40, 0), (60, 60, 0), (40, 60, 0)])
patio.close()
parcela.add_hole(patio)

print(parcela.area)
```

> **Memory ownership:** `add_hole`/`insert_hole` transfers line ownership to the polygon. `explode()` returns independent clones.

## See also

* [Line](line.md), [Geometry](geometry.md)
