# TextJustification
<!-- id: textjustification -->
<!-- origen: 3ee589c7dcc1975b75f48eacbd97f431722bf805 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Text insertion point's position relative to the rectangle occupied by the string. Used by [ReadOnlyText.Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/justification.md) and [Text.Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md).

```csharp
public enum TextJustification
```

## Values

| Value | Number | Meaning |
| :--- | ---: | :--- |
| `SouthWest` | 0 | The insertion point is the text's bottom-left (southwest) corner. |
| `West` | 1 | The insertion point is the midpoint of the left (west) side. |
| `NorthWest` | 2 | The insertion point is the top-left (northwest) corner. |
| `North` | 3 | The insertion point is the midpoint of the top (north) side. |
| `NorthEast` | 4 | The insertion point is the top-right (northeast) corner. |
| `East` | 5 | The insertion point is the midpoint of the right (east) side. |
| `SouthEast` | 6 | The insertion point is the bottom-right (southeast) corner. |
| `South` | 7 | The insertion point is the midpoint of the bottom (south) side. |
| `Center` | 8 | The insertion point is the text's center. |

The numbers match those stored by the native Digi3D.AI entity. A new `Text` has justification `SouthWest`.

## Example

The [Text example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/#example) creates text with each enumeration value.
