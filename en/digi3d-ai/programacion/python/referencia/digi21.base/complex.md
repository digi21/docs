# Complex
<!-- id: complex-2 -->
<!-- origen: 457452927723c42a51d34346881545f17cd2ee45 -->

Module: [digi21.base](README.md)

A complex entity grouping child geometries, inheriting from [Geometry](geometry.md). Behaves as a sequence of children, supporting `len()`, indexing, and iteration.

```python
Complex(codes=())
```

| Argument | Type | Description |
|---|---|---|
| `codes` | iterable | Codes (`FeatureCode` or `str`) |

## Properties

| Property | Type | Description |
|---|---|---|
| `closed` | `bool` | Whether the complex is closed |
| `geometries` | `list[Geometry]` | Child geometry list |

## Methods

| Method | Returns | Description |
|---|---|---|
| `add(geometry)` | — | Add a geometry, taking ownership. Raise `ValueError` if read-only, if `geometry` is `None`, or if `geometry` is this complex or a containing complex |
| `insert(position, geometry)` | — | Insert at 0 through `len(geometries)`, appending at `len(geometries)`. Raise `ValueError` as for `add`, or `IndexError` for an out-of-range `position` |
| `remove(geometry)` | `bool` | Remove the specified geometry.<br>Return `True` if removed |
| `clear()` | — | Remove every geometry |
| `explode()` | `list` | Return independent clones of component geometries |

## Accessing child geometries

| Operation | Description |
|---|---|
| `len(complex)` | Child count |
| `complex[i]` | Child at position `i` |
| `for g in complex:` | Iterate over children |

## Example

```python
from digi21.base import Complex, Line, Point

bloque = Complex(["BLOQUE"])
bloque.add(Line(["MURO"], [(0, 0, 0), (10, 0, 0)]))
bloque.add(Point((5, 5, 0), codes=["POSTE"]))

for hija in bloque:
    print(type(hija).__name__)
```

> **Memory ownership:** `add`/`insert` transfers ownership to the complex. `explode()` returns independent clones.

## See also

* [Geometry](geometry.md)
