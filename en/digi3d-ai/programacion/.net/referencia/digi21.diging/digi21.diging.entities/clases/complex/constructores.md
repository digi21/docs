# Constructors
<!-- id: constructores-5 -->
<!-- origen: 38ca6c8c8872f5148e58c32433d7bd07a14b07fa -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructors of [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/). Both create a complex without entities, belonging to no drawing file, with empty `Attributes` and no color, line weight or fill color of its own.

<a id="complex-code"></a>
## Complex(Code)

```csharp
public Complex(Code code)
```

Creates a complex with one code.

| Parameter | Description |
| :--- | :--- |
| `code` | Complex code. |

```csharp
var complejo = new Complex(new Code("100000"));
```

<a id="complex-ienumerable-code"></a>
## Complex(IEnumerable&lt;Code&gt;)

```csharp
public Complex(IEnumerable<Code> codes)
```

Creates a complex with the codes in `codes`, in enumeration order.

| Parameter | Description |
| :--- | :--- |
| `codes` | Complex codes. |

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `codes` is `null`. |

```csharp
var complejo = new Complex(new[]
{
    new Code("100000"),
    new Code("ABCDE"),
});
```
