# Point
<!-- id: point-2 -->
<!-- origen: b56452a65a40dd9c1d3715e34868fc553e0bc8c8 -->

Module: [digi21.base](README.md)

A point, inheriting from [Geometry](geometry.md), with one internal vertex.

```python
Point(coordinates, codes=(), rotation=0.0, scale=(1.0, 1.0, 1.0))
```

| Argument | Type | Description |
|---|---|---|
| `coordinates` | `tuple` | `(x, y, z)` coordinates |
| `codes` | iterable | Codes (`FeatureCode` or `str`) |
| `rotation` | `float` | Rotation in degrees, counterclockwise from X |
| `scale` | `tuple` | `(x, y, z)` scale |

## Properties

| Property | Type | R/W | Description |
|---|---|---|---|
| `rotation` | `float` | R/W | Point rotation in degrees, counterclockwise from X. Earlier versions used radians |
| `scale` | `tuple` | R/W | `(x, y, z)` scale |

Also inherits all [Geometry](geometry.md) properties and methods.

## Example

```python
from digi21.base import Point

p = Point((100.0, 200.0, 50.0), codes=["EDIF"], rotation=0.0)
```

## See also

* [Geometry](geometry.md)
