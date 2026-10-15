# Constructores
<!-- id: constructores-6 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructores de [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/). Los dos crean una línea sin vértices, que no pertenece a ningún archivo de dibujo, con `Attributes` vacío y sin color, grosor ni color de relleno propios.

<a id="line-code"></a>
## Line(Code)

```csharp
public Line(Code code)
```

Crea una línea con un código.

| Parámetro | Descripción |
| :--- | :--- |
| `code` | Código de la línea. |

```csharp
var línea = new Line(new Code("020400"));
```

<a id="line-ienumerable-code"></a>
## Line(IEnumerable&lt;Code&gt;)

```csharp
public Line(IEnumerable<Code> codes)
```

Crea una línea con los códigos de `codes`, en el orden de la enumeración. Una enumeración vacía crea una línea sin códigos.

| Parámetro | Descripción |
| :--- | :--- |
| `codes` | Códigos de la línea. |

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `codes` es `null`. |

```csharp
var línea = new Line(new[]
{
    new Code("020400"),
    new Code("ABCDE"),
});
```
