# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

Implementa: [ICloneable](../icloseable/), [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)

## Observaciones

Algunas propiedades de este tipo permiten asignación como [FillColor](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md).

Al instanciar una geometría nueva como por ejemplo [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md), ésta es de lectura/escritura, de manera que se pueden utilizar las propiedades de asignación sin ningún problema.   
En el momento en el que la geometría se almacena en un archivo de dibujo \([IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), esta se convierte en una geometría de sólo lectura y ya no es posible asignar ninguna propiedad. 

En caso de asignar alguna propiedad en una geometría de solo lectura \(excepto la propiedad [Hidden](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md).

## Propiedades


|  |  |
| :--- | :--- |
| [W](../../digi21.math/iwindow3d/propiedades/w.md) |Devuelve el punto al oeste del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [SW](../../digi21.math/iwindow3d/propiedades/sw.md) |Devuelve el punto al sudeste del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [S](../../digi21.math/iwindow3d/propiedades/s.md) |Devuelve el punto al sur del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [SE](../../digi21.math/iwindow3d/propiedades/se.md) |Devuelve el punto al sudeste del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [E](../../digi21.math/iwindow3d/propiedades/e.md) |Devuelve el punto al este del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [NE](../../digi21.math/iwindow3d/propiedades/ne.md) |Devuelve el punto al noreste del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [N](../../digi21.math/iwindow3d/propiedades/n.md) |Devuelve el punto al norte del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [NW](../../digi21.math/iwindow3d/propiedades/nw.md) |Devuelve el punto al noreste del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Center](../../digi21.math/iwindow3d/propiedades/center.md) |Devuelve el punto en el centro del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Depth](../../digi21.math/iwindow3d/propiedades/depth.md) |Devuelve el largo del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Height](../../digi21.math/iwindow3d/propiedades/height.md) |Devuelve el alto del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Width](../../digi21.math/iwindow3d/propiedades/width.md) |Devuelve el ancho del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Valid](../../digi21.math/iwindow3d/propiedades/valid.md) |Indica si las máximas y mínimas del [Entity](./) son válidas.<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Xmin](../../digi21.math/iwindow3d/propiedades/xmin.md) |Devuelve la coordenada X mínima del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Ymin](../../digi21.math/iwindow3d/propiedades/ymin.md) |Devuelve la coordenada Y mínima del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Zmin](../../digi21.math/iwindow3d/propiedades/zmin.md) |Devuelve la coordenada Z mínima del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Xmax](../../digi21.math/iwindow3d/propiedades/xmax.md) |Devuelve la coordenada X máxima del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Ymax](../../digi21.math/iwindow3d/propiedades/ymax.md) |Devuelve la coordenada Y máxima del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Zmax](../../digi21.math/iwindow3d/propiedades/zmax.md) |Devuelve la coordenada Z máxima del [Entity](./).<br>(Heredado de [IWindow3D](../../digi21.math/iwindow3d/))|
| [Owner](propiedades/owner.md) | Devuelve el [IDrawingFile](../../digi21.diging.io/idrawingfile/)al que pertenece el [Entity](./). |
| [Deleted](propiedades/deleted.md) | Especifica si el [Entity](./)está eliminado. |
| [ReadOnly](propiedades/readonly.md) | Especifica si el [Entity](./) es de solo lectura (ya está almacenada en algún [IDrawingFile](../../digi21.diging.io/idrawingfile/)) |
| [FillColor](propiedades/fillcolor.md) | Especifica el color de relleno del [Entity](./). |
| [Weight](propiedades/weight.md) | Especifica el grosor del [Entity](./). |
| [Color](propiedades/color.md) | Especifica el color del [Entity](./). |
| [Codes](propiedades/codes.md) | Devuelve un objeto CodeCollectioncon los códigos del [Entity](./). |
| [Visible](propiedades/visible.md) | Indica si el [Entity](./) es visible. |
| [CreationTime](propiedades/creationtime.md) | Devuelve un objeto [DateTime](https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0)con la fecha de creación del [Entity](./). |
| [Offset](propiedades/offset.md) | Indica el *offset* en el que está almacenado el [Entity](./) en el [IDrawingFile](../../digi21.diging.io/idrawingfile/). |
| [Database](propiedades/database.md) | Devuelve un objeto [IDictionary<>](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0) con los atributos de base de datos de cada código que tenga el [Entity](./). |
| [Hidden](propiedades/hidden.md) | Comprueba y permite indicar si ocultar la visualización de este [Entity](./)en la ventana de dibujo. |


## Métodos


|  |  |
| :--- | :--- |
| [Clone](metodos/clone.md) |Instancia una nueva [Entity](./)idéntica que no está almacenada en ningún archivo de dibujo y que por lo tanto no es de solo lectura.<br>(Heredado de [ICloneable](../icloseable/))|
| Dispose |Destruye el [Entity](./) liberando memoria inmediatamente.<br>(Heredado de [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0))|
| ToString |Convierte este [Entity](./) en una cadena legible para los humanos.<br>(Heredado de [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0))|
|  |  |




