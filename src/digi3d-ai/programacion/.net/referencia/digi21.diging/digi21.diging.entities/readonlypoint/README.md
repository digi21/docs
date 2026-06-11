# ReadOnlyPoint

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo punto de solo lectura.

```csharp
public class ReadOnlyPoint : Entity, ISnapable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → ReadOnlyPoint

Tipos derivados: [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)

Implementa: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/)

## Propiedades

|  |  |
| :--- | :--- |
| [Coordinate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/coordinate.md). |
| [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md). |

## Métodos


|  |  |
| :--- | :--- |
| [Clone()](metodos/clone.md) | Devuelve una nueva instancia de [Point](../point/) idéntica a la actual pero que no está asignada a ningún [IDrawingFile](../../digi21.diging.io/idrawingfile/) de manera que no es de solo lectura. |
| [Distance(Point3D)](../isnapable/metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano a la geometría.; (Heredado de [ISnapable](../isnapable/)) |
| [NearestSegment(Point3D, out Point3D, out int)](../isnapable/metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto.; (Heredado de [ISnapable](../isnapable/)) |
| [NearestVertex(Point3D, out Point3D, out int)](../isnapable/metodos/nearestvertex.md) | Indica el vértice más cercano así como su índice y distancia.; (Heredado de [ISnapable](../isnapable/)) |


