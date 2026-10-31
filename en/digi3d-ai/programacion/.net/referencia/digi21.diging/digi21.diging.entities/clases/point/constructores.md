# Constructors
<!-- id: constructores-7 -->
<!-- origen: 3414f820d15f2d03e0a6f124ede843a127cefb00 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

The constructors create a read/write [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), without a drawing file (`Owner` is `null`), with coordinate (0, 0, 0) and rotation 0 degrees.

```csharp
public Point(Code code)
public Point(IEnumerable<Code> codes)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `code` | Point's [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). |
| `codes` | Point codes, in enumeration order. The enumeration may be empty. |

`CreationTime` takes the system's UTC time at construction.

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `codes` is `null`. |

## Example

The [Point example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/#example) uses `Point(Code)`.
