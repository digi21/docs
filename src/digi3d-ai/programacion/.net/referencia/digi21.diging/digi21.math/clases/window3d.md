# Window3D

Espacio de nombres: [Digi21.Math](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/)\
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)​‌

Esta clase implementa una ventana en tres dimensiones.

```csharp
public struct Window3D : IWindow3D, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Window3D

Implementa: [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)

## Constructores

|                                                          |                                                                                                                                                                                  |
| -------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Window3D(Point3D point)                                  | Inicializa una nueva instancia de un [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros.                               |
| Window3D(double, double, double, double, double, double) | Inicializa una nueva instancia de un [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros.                            |
| Window3D(IWindow3D)                                      | Inicializa una nueva instancia de un [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros. |

## Propiedades

|                                                         |                                                                                                                                                     |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| [W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md)      |
| [SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md)    |
| [S](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/)        |
| [SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md)    |
| [E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/)       |
| [NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md)    |
| [N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/n.md)      |
| [NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md)    |
| [Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md)  |
| [Depth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md)               |
| [Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md)                |
| [Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md)               |
| [Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md)              |
| [Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) |
| [Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md) |
| [Zmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md) |
| [Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md) |
| [Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md) |
| [Zmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) |

## Métodos

|                                                                                                             |                                                                                                                                                                                                                                              |
| ----------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Offset(Point2D)](../interfaces/idesplazable/metodos/offset.md#offset-point-2-d)                            |Desplaza el [Window3D](window3d.md) tantas unidades en X, Y como se indique en el parámetro.<br>(Heredado de [IDesplazable](../interfaces/idesplazable/))|
| [Offset(Point3D)](../interfaces/idesplazable/metodos/offset.md#offset-point-3-d)                            |Desplaza el [Window3D](window3d.md) tantas unidades en X, Y, Z como se indique en el parámetro.<br>(Heredado de [IDesplazable](../interfaces/idesplazable/))|
| [Offset(double, double)](../interfaces/idesplazable/metodos/offset.md#offset-double-double)                 |Desplaza el [Window3D](window3d.md) tantas unidades en X, Y como se indique en los parámetros.<br>(Heredado de [IDesplazable](../interfaces/idesplazable/))|
| [Offset(double, double, double)](../interfaces/idesplazable/metodos/offset.md#offset-double-doublem-double) |Desplaza el [Window3D](window3d.md) tantas unidades en X, Y, Z como se indique en los parámetros.<br>(Heredado de [IDesplazable](../interfaces/idesplazable/))|
| Inflate(double, double, double)                                                                             | Hace crecer tanto la X mínima como la X máxima del [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) tantas unidades como las especificadas en el primer parámetro y de manera similar en los ejes Y,Z con los valores especificados en el segundo y tercer parámetro. |
| Inflate(double, double)                                                                                     | Hace crecer tanto la X mínima como la X máxima del [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) tantas unidades como las especificadas en el primer parámetro y de manera similar en el eje Y con el valor especificado en el segundo parámetro.                  |
| Inflate(Point3D)                                                                                            | Hace crecer las máximas y mínimas del [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetro.                                                                         |
| Inflate(Size)                                                                                               | Hace crecer las máximas y mínimas del [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetro.          |
| Union(IWindow3D)                                                                                            | Hace crecer si es necesario el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros.                                                                                      |
| Union(Window3D)                                                                                             | Hace crecer si es necesario el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                                                                                    |
| Union(Point3D)                                                                                              | Hace crecer si es necesario el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                                                                                      |
| Union(PointF)                                                                                               | Hace crecer si es necesario el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                   |
| Union(Point)                                                                                                | Hace crecer si es necesario el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                     |
| Union(double, double, double, double, double, double)                                                       | Hace crecer si es necesario el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)para que contenga a las máximas y mínimas pasadas por parámetros.                                                                                                      |
| Contains(IWindow3D)                                                                                         | Indica si el [Window3D](window3d.md)contiene al [IWindow3D](../interfaces/iwindow3d/)pasado por parámetros.                                                                                                                                |
| Contains(Window3D)                                                                                          | Indica si el [Window3D](window3d.md)contiene al [Window3D](window3d.md)pasado por parámetros.                                                                                                                                              |
| Contains(Point3D)                                                                                           | Indica si el [Window3D](window3d.md)contiene al [Point3D](point3d.md)pasado por parámetros.                                                                                                                                                |
| Contains(PointF)                                                                                            | Indica si el [Window3D](window3d.md)contiene al [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasado por parámetros.                                                                             |
| Contains(Point)                                                                                             | Indica si el [Window3D](window3d.md)contiene al [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0)pasado por parámetros.                                                                               |
| Intersect(Window3D)                                                                                         | Indica si el [Window3D](window3d.md)intersecciona con el [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros.                                                    |
| ToString()                                                                                                  | Convierte este [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) en una cadena legible para los humanos.                                                                                                                                                               |
