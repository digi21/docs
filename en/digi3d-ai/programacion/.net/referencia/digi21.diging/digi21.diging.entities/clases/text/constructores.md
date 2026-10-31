# Constructors
<!-- id: constructores-10 -->
<!-- origen: a2327f3724213a63a09549f5b7c8ad8753f9dc7e -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

The constructors create a read/write [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/), without a drawing file (`Owner` is `null`), with an empty string, coordinate (0, 0, 0), height 0 drawing file units, rotation 0 degrees, orientation [Quaternion.Identity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) (the XY plane), and justification `SouthWest`.

```csharp
public Text(Code code)
public Text(IEnumerable<Code> codes)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `code` | Text's [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). |
| `codes` | Text codes, in enumeration order. The enumeration may be empty. |

`CreationTime` takes the system's UTC time at construction.

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `codes` is `null`. |

## Example

The [Text example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/#example) uses `Text(Code)`.
