# Window3D

Espacio de nombres: [Digi21.Math](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/)\
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)​‌

Esta clase implementa una ventana en tres dimensiones.

```csharp
public struct Window3D : IWindow3D, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Window3D

Implementa: [IWindow3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)

## Constructores

|                                                          |                                                                                                                                                                                  |
| -------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Window3D(Point3D point)                                  | Inicializa una nueva instancia de un [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros.                               |
| Window3D(double, double, double, double, double, double) | Inicializa una nueva instancia de un [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros.                            |
| Window3D(IWindow3D)                                      | Inicializa una nueva instancia de un [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros. |

## Propiedades

|                                                         |                                                                                                                                                     |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| [W](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md)</p>      |
| [SW](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md)</p>    |
| [S](/digi3d-net/referencia/ventana-de-dibujo/ordenes/s/)</p>        |
| [SE](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md)</p>    |
| [E](/digi3d-net/referencia/ventana-de-dibujo/ordenes/e/)</p>       |
| [NE](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md)</p>    |
| [N](/digi3d-net/referencia/ventana-de-dibujo/ordenes/n/orden-n.md)</p>      |
| [NW](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md)</p>    |
| [Center](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md)</p>  |
| [Depth](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md)</p>               |
| [Height](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md)</p>                |
| [Width](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md)</p>               |
| [Valid](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md)</p>              |
| [Xmin](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md)</p> |
| [Ymin](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md)</p> |
| [Zmin](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md)</p> |
| [Xmax](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md)</p> |
| [Ymax](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md)</p> |
| [Zmax](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md)</p> |

## Métodos

|                                                                                                             |                                                                                                                                                                                                                                              |
| ----------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Offset(Point2D)](../interfaces/idesplazable/metodos/offset.md#offset-point-2-d)                            | <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y como se indique en el parámetro.</p><p>(Heredado de <a href="../interfaces/idesplazable/">IDesplazable</a>)</p>                                                    |
| [Offset(Point3D)](../interfaces/idesplazable/metodos/offset.md#offset-point-3-d)                            | <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y, Z como se indique en el parámetro.</p><p>(Heredado de <a href="../interfaces/idesplazable/">IDesplazable</a>)</p>                                                 |
| [Offset(double, double)](../interfaces/idesplazable/metodos/offset.md#offset-double-double)                 | <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y como se indique en los parámetros.</p><p>(Heredado de <a href="../interfaces/idesplazable/">IDesplazable</a>)</p>                                                  |
| [Offset(double, double, double)](../interfaces/idesplazable/metodos/offset.md#offset-double-doublem-double) | <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y, Z como se indique en los parámetros.</p><p>(Heredado de <a href="../interfaces/idesplazable/">IDesplazable</a>)</p>                                               |
| Inflate(double, double, double)                                                                             | Hace crecer tanto la X mínima como la X máxima del [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) tantas unidades como las especificadas en el primer parámetro y de manera similar en los ejes Y,Z con los valores especificados en el segundo y tercer parámetro. |
| Inflate(double, double)                                                                                     | Hace crecer tanto la X mínima como la X máxima del [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) tantas unidades como las especificadas en el primer parámetro y de manera similar en el eje Y con el valor especificado en el segundo parámetro.                  |
| Inflate(Point3D)                                                                                            | Hace crecer las máximas y mínimas del [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetro.                                                                         |
| Inflate(Size)                                                                                               | Hace crecer las máximas y mínimas del [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetro.          |
| Union(IWindow3D)                                                                                            | Hace crecer si es necesario el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros.                                                                                      |
| Union(Window3D)                                                                                             | Hace crecer si es necesario el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                                                                                    |
| Union(Point3D)                                                                                              | Hace crecer si es necesario el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                                                                                      |
| Union(PointF)                                                                                               | Hace crecer si es necesario el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                   |
| Union(Point)                                                                                                | Hace crecer si es necesario el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasado por parámetros.                                     |
| Union(double, double, double, double, double, double)                                                       | Hace crecer si es necesario el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)para que contenga a las máximas y mínimas pasadas por parámetros.                                                                                                      |
| Contains(IWindow3D)                                                                                         | Indica si el [Window3D](window3d.md)contiene al [IWindow3D](../interfaces/iwindow3d/)pasado por parámetros.                                                                                                                                |
| Contains(Window3D)                                                                                          | Indica si el [Window3D](window3d.md)contiene al [Window3D](window3d.md)pasado por parámetros.                                                                                                                                              |
| Contains(Point3D)                                                                                           | Indica si el [Window3D](window3d.md)contiene al [Point3D](point3d.md)pasado por parámetros.                                                                                                                                                |
| Contains(PointF)                                                                                            | Indica si el [Window3D](window3d.md)contiene al [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasado por parámetros.                                                                             |
| Contains(Point)                                                                                             | Indica si el [Window3D](window3d.md)contiene al [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0)pasado por parámetros.                                                                               |
| Intersect(Window3D)                                                                                         | Indica si el [Window3D](window3d.md)intersecciona con el [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md)pasado por parámetros.                                                    |
| ToString()                                                                                                  | Convierte este [Window3D](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) en una cadena legible para los humanos.                                                                                                                                                               |
