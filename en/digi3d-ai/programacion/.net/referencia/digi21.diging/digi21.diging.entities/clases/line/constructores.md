# Constructors
<!-- id: constructores-6 -->
<!-- origen: 2ddf563aef7af4ae5ef74138595aac380c5d0e67 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructors of [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/). Both create a line without vertices, belonging to no drawing file, with empty `Attributes` and no color, line weight or fill color of its own.

<a id="line-code"></a>
## Line(Code)

```csharp
public Line(Code code)
```

Creates a line with one code.

| Parameter | Description |
| :--- | :--- |
| `code` | Line code. |

```csharp
var línea = new Line(new Code("020400"));
```

<a id="line-ienumerable-code"></a>
## Line(IEnumerable&lt;Code&gt;)

```csharp
public Line(IEnumerable<Code> codes)
```

Creates a line with the codes in `codes`, in enumeration order. An empty enumeration creates a line without codes.

| Parameter | Description |
| :--- | :--- |
| `codes` | Line codes. |

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `codes` is `null`. |

```csharp
var línea = new Line(new[]
{
    new Code("020400"),
    new Code("ABCDE"),
});
```
