# ICloseable

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Este interfaz define los métodos que deben implementar las geometrías que se pueden cerrar.

```csharp
public interface ICloseable
```

Tipos derivados: [ReadOnlyLine](../../clases/readonlyline/), [ReadOnlyPolygon](../../clases/readonlypolygon/)

## Propiedades

|  |  |
| :--- | :--- |
| [InteriorPoint](propiedades/interiorpoint.md) | Devuelve un Point3D en el interior de la geometría. |
| [ClosedXYZ](propiedades/closedxyz.md) | Indica si el primer y último vértices de la geometría coinciden en sus coordenadas X, Y, Z. |
| [Closed](propiedades/closed.md) | Indica si el primer y último vértices de la geometría coinciden en sus coordenadas X, Y. |

## Métodos

|  |  |
| :--- | :--- |
| [AnalyzePointPosition](metodos/analyzepointposition.md) | Devuelve un [PointPosition ](../../enumeraciones/pointposition.md)especificando la posición relativa de un [Point3D ](../../../digi21.math/clases/point3d.md)con la geometría. |

