# Constructores
<!-- id: constructores-8 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Constructores de [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/). Los dos crean un polígono sin vértices ni huecos, que no pertenece a ningún archivo de dibujo, con `Attributes` vacío y sin color, grosor ni color de relleno propios.

<a id="polygon-code"></a>
## Polygon(Code)

```csharp
public Polygon(Code codigo)
```

Crea un polígono con un código.

| Parámetro | Descripción |
| :--- | :--- |
| `codigo` | Código del polígono. |

```csharp
var polígono = new Polygon(new Code("080100"));
```

<a id="polygon-ienumerable-code"></a>
## Polygon(IEnumerable&lt;Code&gt;)

```csharp
public Polygon(IEnumerable<Code> codigos)
```

Crea un polígono con los códigos de `codigos`, en el orden de la enumeración. Una enumeración vacía crea un polígono sin códigos.

| Parámetro | Descripción |
| :--- | :--- |
| `codigos` | Códigos del polígono. |

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `codigos` es `null`. |

```csharp
var polígono = new Polygon(new[]
{
    new Code("080100"),
    new Code("ABCDE"),
});
```
