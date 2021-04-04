# ISnapable

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Este interfaz define los métodos que deben implementar las geometrías que se pueden tentativar en la ventana de dibujo.

```csharp
public interface ISnapable
```

Tipos derivados: [ReadOnlyLine](../readonlyline/), [ReadOnlyPoint](../readonlypoint.md), [ReadOnlyPolygon](../readonlypolygon.md), [ReadOnlyText](../readonlytext.md)

## Métodos

|  |  |
| :--- | :--- |
| [Distance](metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano a la geometría. |
| [NearestSegment](metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto. |
| [NearestVertex](metodos/nearestvertex.md) | Indica el vértice más cercano, así como su índice y distancia. |

