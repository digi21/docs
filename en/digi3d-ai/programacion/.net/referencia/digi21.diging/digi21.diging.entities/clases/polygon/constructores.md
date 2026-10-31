# Constructors
<!-- id: constructores-8 -->
<!-- origen: d323149d9a9a6c0f4dc67465a12d45f7ea6a96af -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructors of [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/). Both create a polygon without vertices or holes, belonging to no drawing file, with empty `Attributes` and no color, line weight or fill color of its own.

<a id="polygon-code"></a>
## Polygon(Code)

```csharp
public Polygon(Code code)
```

Creates a polygon with one code.

| Parameter | Description |
| :--- | :--- |
| `code` | Polygon code. |

```csharp
var polígono = new Polygon(new Code("080100"));
```

<a id="polygon-ienumerable-code"></a>
## Polygon(IEnumerable&lt;Code&gt;)

```csharp
public Polygon(IEnumerable<Code> codes)
```

Creates a polygon with the codes in `codes`, in enumeration order. An empty enumeration creates a polygon without codes.

| Parameter | Description |
| :--- | :--- |
| `codes` | Polygon codes. |

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `codes` is `null`. |

```csharp
var polígono = new Polygon(new[]
{
    new Code("080100"),
    new Code("ABCDE"),
});
```
