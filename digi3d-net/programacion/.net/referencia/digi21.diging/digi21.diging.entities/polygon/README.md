# Polygon

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo polígono.

```csharp
public class Polygon : ReadOnlyPolygon
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → [ReadOnlyPolygon](../readonlypolygon/) → Polygon

## Constructores

|  |  |
| :--- | :--- |
| [Polygon\(Code\)](constructores.md#polygon-code) | Inicializa una nueva instancia de [Polygon](./) con un código. |
| [Polygon\(IEnumerable&lt;Code&gt;\)](constructores.md#polygon-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Polygon](./) con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Holes](propiedades/holes.md) | Devuelve la lista de huecos del [Polygon](./). |
| [Points](propiedades/points.md) | Devuelve la lista de vértices del límite exterior del [Polygon](./). |

## Métodos estáticos

|  |  |
| :--- | :--- |
| [JoinPolygons\(Entity, Entity\)](metodos-estaticos/joinpolygons.md) | Devuelve el [Polygon](./) resultado de la unión de dos [Entity](../entity/). |

