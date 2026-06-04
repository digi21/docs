# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)\
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

Implementa: [ICloneable](../../interfaces/icloseable/), [IWindow3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)

## Observaciones

Algunas propiedades de este tipo permiten asignación como [FillColor](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md).

Al instanciar una geometría nueva como por ejemplo [Line](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md), ésta es de lectura/escritura, de manera que se pueden utilizar las propiedades de asignación sin ningún problema. \
En el momento en el que la geometría se almacena en un archivo de dibujo ([IDrawingFile](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), esta se convierte en una geometría de sólo lectura y ya no es posible asignar ninguna propiedad.&#x20;

En caso de asignar alguna propiedad en una geometría de solo lectura (excepto la propiedad [Hidden](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md).

## Propiedades

| [Attributes](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/attributes_entity.md)                           | Devuelve o asigna un diccionario con los atributos de la geometría                                                                                                     |
| ------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [W](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md)</p>                  |
| [SW](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md)</p>                |
| [S](/digi3d-net/referencia/ventana-de-dibujo/ordenes/s/)</p>                    |
| [SE](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md)</p>                |
| [E](/digi3d-net/referencia/ventana-de-dibujo/ordenes/e/)</p>                   |
| [NE](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md)</p>                |
| [N](/digi3d-net/referencia/ventana-de-dibujo/ordenes/n/orden-n.md)</p>                  |
| [NW](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md)</p>                |
| [Center](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md)</p>              |
| [Depth](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md)</p>                           |
| [Height](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md)</p>                            |
| [Width](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md)</p>                           |
| [Valid](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md)</p> |
| [Xmin](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md)</p>             |
| [Ymin](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md)</p>             |
| [Zmin](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md)</p>             |
| [Xmax](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md)</p>             |
| [Ymax](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md)</p>             |
| [Zmax](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md)</p>             |
| [Owner](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/owner.md).                                                       |
| [Deleted](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/deleted.md)está eliminado.                                                                                                                          |
| [ReadOnly](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md)                      |
| [FillColor](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/fillcolor.md).                                                                                                                       |
| [Weight](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/weight.md).                                                                                                                                 |
| [Color](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/color.md).                                                                                                                                  |
| [Codes](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md).                                                                                |
| [Visible](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) es visible.                                                                                                                                  |
| [CreationTime](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/creationtime.md).                     |
| [Offset](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md).                                 |
| [Hidden](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/hidden.md) en la ventana de dibujo.                                                                  |

## Métodos

|                           |                                                                                                                                                                                                                                    |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Clone](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md)</p> |
| ToString                  | <p>Convierte este <a href="./">Entity</a> en una cadena legible para los humanos.</p><p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0">Object</a>)</p>                              |
|                           |                                                                                                                                                                                                                                    |

