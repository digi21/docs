# TextJustification
<!-- id: textjustification-2 -->
<!-- origen: d61d502865dfe4b1bd68c7fc5ca2639107ff0c66 -->

Module: [digi21.base](README.md)

[Text](text.md) justification: insertion point position relative to the text.

| Value | Position |
|---|---|
| `SW` | Southwest (bottom-left corner) |
| `W` | West (middle-left) |
| `NW` | Northwest (top-left corner) |
| `N` | North (top-center) |
| `NE` | Northeast (top-right corner) |
| `E` | East (middle-right) |
| `SE` | Southeast (bottom-right corner) |
| `S` | South (bottom-center) |
| `C` | Center |

## Example

```python
from digi21.base import Text, TextJustification

t = Text("Centro", (0, 0, 0), codes=["ROT"], text_justification=TextJustification.C)
```
