# Constructores
<!-- id: constructores-5 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructores de [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/). Los dos crean un complejo sin entidades, que no pertenece a ningún archivo de dibujo, con `Attributes` vacío y sin color, grosor ni color de relleno propios.

<a id="complex-code"></a>
## Complex(Code)

```csharp
public Complex(Code code)
```

Crea un complejo con un código.

| Parámetro | Descripción |
| :--- | :--- |
| `code` | Código del complejo. |

```csharp
var complejo = new Complex(new Code("100000"));
```

<a id="complex-ienumerable-code"></a>
## Complex(IEnumerable&lt;Code&gt;)

```csharp
public Complex(IEnumerable<Code> codes)
```

Crea un complejo con los códigos de `codes`, en el orden de la enumeración.

| Parámetro | Descripción |
| :--- | :--- |
| `codes` | Códigos del complejo. |

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `codes` es `null`. |

```csharp
var complejo = new Complex(new[]
{
    new Code("100000"),
    new Code("ABCDE"),
});
```
