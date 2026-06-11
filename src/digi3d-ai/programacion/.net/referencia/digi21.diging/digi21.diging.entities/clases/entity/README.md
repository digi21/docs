# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)\
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

Implementa: [ICloneable](../../interfaces/icloseable/), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)

## Observaciones

Algunas propiedades de este tipo permiten asignación como [FillColor](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md).

Al instanciar una geometría nueva como por ejemplo [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md), ésta es de lectura/escritura, de manera que se pueden utilizar las propiedades de asignación sin ningún problema. \
En el momento en el que la geometría se almacena en un archivo de dibujo ([IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), esta se convierte en una geometría de sólo lectura y ya no es posible asignar ninguna propiedad.&#x20;

En caso de asignar alguna propiedad en una geometría de solo lectura (excepto la propiedad [Hidden](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md).

## Propiedades

| [Attributes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/attributes_entity.md)                           | Devuelve o asigna un diccionario con los atributos de la geometría                                                                                                     |
| ------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md)                  |
| [SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md)                |
| [S](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/)                    |
| [SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md)                |
| [E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/)                   |
| [NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md)                |
| [N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/n.md)                  |
| [NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md)                |
| [Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md)              |
| [Depth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md)                           |
| [Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md)                            |
| [Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md)                           |
| [Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) |
| [Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md)             |
| [Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md)             |
| [Zmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md)             |
| [Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md)             |
| [Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md)             |
| [Zmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md)             |
| [Owner](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/owner.md).                                                       |
| [Deleted](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/deleted.md)está eliminado.                                                                                                                          |
| [ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md)                      |
| [FillColor](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md).                                                                                                                       |
| [Weight](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/weight.md).                                                                                                                                 |
| [Color](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/color.md).                                                                                                                                  |
| [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md).                                                                                |
| [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) es visible.                                                                                                                                  |
| [CreationTime](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/creationtime.md).                     |
| [Offset](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md).                                 |
| [Hidden](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md) en la ventana de dibujo.                                                                  |

## Métodos

|                           |                                                                                                                                                                                                                                    |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) |
| ToString                  | Convierte este [Entity](./) en una cadena legible para los humanos.; (Heredado de [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0))|
|                           |                                                                                                                                                                                                                                    |

