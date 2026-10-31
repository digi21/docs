# Visible
<!-- id: visible -->
<!-- origen: 3c239b8823641168255b854f0fd87e08a9f68939 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Bitmask of entity types displayed with this code in the drawing window.

```csharp
public uint Visible { get; set; }
```

## Property value

Each bit corresponds to an entity type. An entity is displayed in the drawing window if any of its codes has its type's bit enabled and the entity is not hidden ([Entity.Hidden](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md)). The result is read through [Entity.Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/visible.md).

| Bit | Entity type |
| :--- | :--- |
| `0x1` | Line |
| `0x2` | Point |
| `0x4` | Text |
| `0x8` | Complex |
| `0x10` | Polygon |
| `0x20` | Point complex |

`0xFFFFFFFF` shows all types and `0` shows none. Constructors assign `0xFFFFFFFF`, except `Code(string, int?, int?)`, which assigns `1` (see [Constructors](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/constructores.md)).

`Code` is a structure: assigning `Visible` on an element of `Entity.Codes` modifies a copy. Then assign the copy to `Entity.Codes[i]`.

## Example

```csharp
// Hide points with the line's first code and show the other types.
var código = línea.Codes[0];
código.Visible = 0xFFFFFFFF & ~0x2u;
línea.Codes[0] = código;
```
