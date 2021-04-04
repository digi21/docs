# ICloseable

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Este interfaz define los métodos que deben implementar las geometrías que se pueden cerrar.

```csharp
public interface ICloseable
```

Tipos derivados: [ReadOnlyLine](../readonlyline.md), [ReadOnlyPolygon](../readonlypolygon.md)

## Propiedades

|  |  |
| :--- | :--- |
| InteriorPoint | Devuelve un Point3D en el interior de la geometría. |
| ClosedXYZ | Indica si el primer y último vértices de la geometría coinciden en sus coordenadas X, Y, Z. |
| Closed | Indica si el primer y último vértices de la geometría coinciden en sus coordenadas X, Y. |

## Métodos

|  |  |
| :--- | :--- |
| AnalyzePointPosition | Devuelve un [PointPosition ](../pointposition.md)especificando la posición relativa de un [Point3D ](../../digi21.math/point3d.md)con la geometría. |

