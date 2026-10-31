# PointLineRelativePosition
<!-- id: pointlinerelativeposition -->
<!-- origen: 4d8d548c66f6824be56afc224e0d9f5017e47a57 -->

Module: [digi21.base](README.md)

Point position relative to a [Line](line.md), returned by `calculate_position_point`.

| Value | Meaning |
|---|---|
| `Edge` | Point on the line boundary |
| `Outside` | Point outside |
| `Inside` | Point inside |

## Example

```python
from digi21.base import PointLineRelativePosition

if linea.calculate_position_point((5, 5, 0)) == PointLineRelativePosition.Inside:
    print("dentro")
```

## See also

* [Line](line.md)
