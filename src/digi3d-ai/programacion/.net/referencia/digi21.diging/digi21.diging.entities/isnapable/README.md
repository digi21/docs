# ISnapable

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Este interfaz define los métodos que deben implementar las geometrías que se pueden tentativar en la ventana de dibujo.

```csharp
public interface ISnapable
```

Tipos derivados: [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/)

## Métodos

|  |  |
| :--- | :--- |
| [Distance](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano a la geometría. |
| [NearestSegment](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto. |
| [NearestVertex](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Indica el vértice más cercano, así como su índice y distancia. |

