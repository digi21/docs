# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

Implementa: [ICloneable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/README.md), [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)

## Propiedades


|  |  |
| :--- | :--- |
| [W](../digi21.math/iwindow3d/propiedades/w.md) | Devuelve el punto al oeste del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [SW](../digi21.math/iwindow3d/propiedades/sw.md) | Devuelve el punto al sudeste del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [S](../digi21.math/iwindow3d/propiedades/s.md) | Devuelve el punto al sur del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [SE](../digi21.math/iwindow3d/propiedades/se.md) | Devuelve el punto al sudeste del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [E](../digi21.math/iwindow3d/propiedades/e.md) | Devuelve el punto al este del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [NE](../digi21.math/iwindow3d/propiedades/ne.md) | Devuelve el punto al noreste del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [N](../digi21.math/iwindow3d/propiedades/n.md) | Devuelve el punto al norte del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [NW](../digi21.math/iwindow3d/propiedades/nw.md) | Devuelve el punto al noreste del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Center](../digi21.math/iwindow3d/propiedades/center.md) | Devuelve el punto en el centro del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Depth](../digi21.math/iwindow3d/propiedades/depth.md) | Devuelve el largo del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Height](../digi21.math/iwindow3d/propiedades/height.md) | Devuelve el alto del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Width](../digi21.math/iwindow3d/propiedades/width.md) | Devuelve el ancho del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Valid](../digi21.math/iwindow3d/propiedades/valid.md) | Indica si las máximas y mínimas del [Entity](entity.md) son válidas. |
| [Xmin](../digi21.math/iwindow3d/propiedades/xmin.md) | Devuelve la coordenada X mínima del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Ymin](../digi21.math/iwindow3d/propiedades/ymin.md) | Devuelve la coordenada Y mínima del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Zmin](../digi21.math/iwindow3d/propiedades/zmin.md) | Devuelve la coordenada Z mínima del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Xmax](../digi21.math/iwindow3d/propiedades/xmax.md) | Devuelve la coordenada X máxima del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Ymax](../digi21.math/iwindow3d/propiedades/ymax.md) | Devuelve la coordenada Y máxima del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| [Zmax](../digi21.math/iwindow3d/propiedades/zmax.md) | Devuelve la coordenada Z máxima del [Entity](entity.md).; (Heredado de [IWindow3D](../digi21.math/iwindow3d/)) |
| Owner | Devuelve el [IDrawingFile](../digi21.diging.io/idrawingfile.md)al que pertenece el [Entity](entity.md). |
| Deleted | Especifica si el [Entity](entity.md)está eliminado. |
| ReadOnly | Especifica si el [Entity](entity.md) es de solo lectura (ya está almacenada en algún IDrawingFile) |
| FillColor | Especifica el color de relleno del [Entity](entity.md). |
| Weight | Especifica el grosor del [Entity](entity.md). |
| Color | Especifica el color del [Entity](entity.md). |
| Codes | Devuelve un objeto [CodeCollection](codecollection.md)con los códigos del [Entity](entity.md). |
| Visible | Indica si el [Entity](entity.md) es visible. |
| CreationTime | Devuelve un objeto [DateTime](https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0)con la fecha de creación del [Entity](entity.md). |
| Offset | Indica el índice del [Entity](entity.md) en el [IDrawingFile](../digi21.diging.io/idrawingfile.md)en el que está almacenado. |


