# Window2D

Espacio de nombres: [Digi21.Math](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)​‌

Esta clase implementa una ventana en dos dimensiones.

```csharp
public struct Window2D : IWindow2D, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Window2D

Implementa: [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/)

## Constructores

|  |  |
| :--- | :--- |
| Window2D\(Point3D\) | Inicializa una nueva instancia de un [Window2D](window2d.md)cuyas máximas y mínimas coinciden con el [Point3D](point3d.md)pasado por parámetros. |
| Window2D\(Point2D\) | Inicializa una nueva instancia de un [Window2D](window2d.md)cuyas máximas y mínimas coinciden con el [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) pasado por parámetros. |
| Window2D\(double, double, double, double\) | Inicializa una nueva instancia de un [Window2D](window2d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros. |
| Window2D\(double?, double, double, double\) | Inicializa una nueva instancia de un [Window2D](window2d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros. |
| Window2D\(IWindow3D\) | Inicializa una nueva instancia de un [Window2D](window2d.md)cuyas máximas y mínimas coinciden con las del objeto pasado por parámetros. |
| Window2D\(IWindow2D\) | Inicializa una nueva instancia de un [Window2D](window2d.md)cuyas máximas y mínimas coinciden con las del objeto pasado por parámetros. |

## Propiedades estáticas

|  |  |
| :--- | :--- |
| WholeWorld | Devuelve un [Window2D](window2d.md)que representa todo el universo. |

## ‌Propiedades


| ​Title | ​Title |
| :--- | :--- |
| ​[W](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/w)​ |Devuelve el punto al oeste del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[SW](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/sw)​ |Devuelve el punto al sudeste del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[S](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/s)​ |Devuelve el punto al sur del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[SE](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/se)​ |Devuelve el punto al sudeste del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[E](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/e)​ |Devuelve el punto al este del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[NE](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/ne)​ |Devuelve el punto al noreste del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[N](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/n)​ |Devuelve el punto al norte del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[NW](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/nw)​ |Devuelve el punto al noreste del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Center](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/center)​ |Devuelve el punto en el centro del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Height](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/height)​ |Devuelve el alto del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Width](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/width)​ |Devuelve el ancho del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Valid](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/valid)​ |Indica si la ventana del [Window2D](window2d.md) es válida.<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Xmin](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/xmin)​ |Devuelve la coordenada X mínima del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Ymin](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/ymin)​ |Devuelve la coordenada Y mínima del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Xmax](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/xmax)​ |Devuelve la coordenada X máxima del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|
| ​[Ymax](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/ymax)​ |Devuelve la coordenada Y máxima del [Window2D](window2d.md).<br>(Heredado de [IWindow2D](iwindow2d/))|


## ​Métodos


|  |  |
| :--- | :--- |
| [Offset(Point2D)](idesplazable/metodos/offset.md#offset-point-2-d) |Desplaza el [Window2D](window2d.md) tantas unidades en X, Y como se indique en el parámetro.<br>(Heredado de [IDesplazable](idesplazable/))|
| [Offset(Point3D)](idesplazable/metodos/offset.md#offset-point-3-d) |Desplaza el [Window2D](window2d.md) tantas unidades en X, Y, Z como se indique en el parámetro.<br>(Heredado de [IDesplazable](idesplazable/))|
| [Offset(double, double)](idesplazable/metodos/offset.md#offset-double-double) |Desplaza el [Window2D](window2d.md) tantas unidades en X, Y como se indique en los parámetros.<br>(Heredado de [IDesplazable](idesplazable/))|
| [Offset(double, double, double)](idesplazable/metodos/offset.md#offset-double-doublem-double) |Desplaza el [Window2D](window2d.md) tantas unidades en X, Y, Z como se indique en los parámetros.<br>(Heredado de [IDesplazable](idesplazable/))|
| Inflate(double, double) | Hace crecer tanto la X mínima como la X máxima del [Window2D](window2d.md) tantas unidades como las especificadas en el primer parámetro y de manera similar en el eje Y con el valor especificado en el segundo parámetro. |
| Inflate(Point2D) | Hace crecer tanto la X mínima, X máxima, Y mínima, Y máxima del [Window2D](window2d.md) tantas unidades como las especificadas en el [Point2D](point2d.md)pasado por parámetro. |
| Inflate(Size) | Hace crecer tanto la X mínima, X máxima, Y mínima, Y máxima del [Window2D](window2d.md) tantas unidades como las especificadas en el [Size](https://docs.microsoft.com/en-us/dotnet/api/system.windows.size?view=net-5.0) pasado por parámetro. |
| Union(IWindow3D) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [IWindow3D](iwindow3d/)pasado por parámetros. |
| Union(IWindow2D) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [IWindow2D](iwindow2d/) pasado por parámetros. |
| Union(Window3D) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [Window3D](window3d.md) pasado por parámetros. |
| Union(Window2D) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [Window2D](window2d.md) pasado por parámetros. |
| Union(Point3D) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [Point3D](point3d.md)pasado por parámetros. |
| Union(Point2D) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [Point2D](point2d.md) pasado por parámetros. |
| Union(PointF) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasado por parámetros. |
| Union(Point) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga al [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0) pasado por parámetros. |
| Union(double, double, double, double) | Hace crecer si es necesario el [Window2D](window2d.md)para que contenga las máximas y mínimas pasadas por parámetros. |
| Intersection(double?, double, double, double) | Calcula la intersección entre el [Window2D](window2d.md)y las máximas y mínimas pasadas por parámetro. |
| Intersection(IWindow3D) | Calcula la intersección entre el [Window2D](window2d.md)y el [IWindow3D](iwindow3d/)pasado por parámetro. |
| Intersection(IWindow2D) | Calcula la intersección entre el [Window2D](window2d.md)y el [IWindow2D](iwindow2d/)pasado por parámetro. |
| Intersection(Window3D) | Calcula la intersección entre el [Window2D](window2d.md)y el [Window3D](window3d.md)pasado por parámetro. |
| Intersection(Window2D) | Calcula la intersección entre el [Window2D](window2d.md)y el [Window2D](window2d.md)pasado por parámetro. |
| Contains(double, double, double, double) | Indica si el [Window2D](window2d.md)contiene las máximas y mínimas pasadas por parámetros. |
| Contains(IWindow3D) | Indica si el [Window2D](window2d.md)contiene al [IWindow3D](iwindow3d/)pasado por parámetro. |
| Contains(IWindow2D) | Indica si el [Window2D](window2d.md)contiene al [IWindow2D](iwindow2d/)pasado por parámetro. |
| Contains(Window3D) | Indica si el [Window2D](window2d.md)contiene al [Window3D](window3d.md)pasado por parámetro. |
| Contains(Window2D) | Indica si el [Window2D](window2d.md)contiene al [Window2D](window2d.md)pasado por parámetro. |
| Contains(Point3D) | Indica si el [Window2D](window2d.md)contiene al [Point3D](point3d.md)pasado por parámetro. |
| Contains(Point2D) | Indica si el [Window2D](window2d.md)contiene al [Point2D](point2d.md)pasado por parámetro. |
| Contains(PointF) | Indica si el [Window2D](window2d.md)contiene al [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasado por parámetro. |
| Contains(Point) | Indica si el [Window2D](window2d.md)contiene al [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0)pasado por parámetro. |
| Intersects(double, double, double, double) | Indica si el [Window2D](window2d.md)intersecciona con las máximas y mínimas pasadas por parámetros. |
| Intersects(double?, double, double, double) | Indica si el [Window2D](window2d.md)intersecciona con las máximas y mínimas pasadas por parámetros. |
| Intersects(IWindow3D) | Indica si el [Window2D](window2d.md)intersecciona con el [IWindow3D](iwindow3d/)pasado por parámetro. |
| Intersects(IWindow2D) | Indica si el [Window2D](window2d.md)intersecciona con el [IWindow2D](iwindow2d/)pasado por parámetro. |
| Intersects(Window3D) | Indica si el [Window2D](window2d.md)intersecciona con el [Window3D](window3d.md)pasado por parámetro. |
| Intersects(Window2D) | Indica si el [Window2D](window2d.md)intersecciona con el [Window2D](window2d.md)pasado por parámetro. |
| ToString() | Convierte este [Window2D](window2d.md) en una cadena legible para los humanos. |


## Métodos estáticos

|  |  |
| :--- | :--- |
| Union\(IWindow3D, Point3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [Point3D](point3d.md)pasados por parámetros. |
| Union\(IWindow3D, Point2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [Point2D](point2d.md)pasados por parámetros. |
| Union\(IWindow2D, Point3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [Point3D](point3d.md)pasados por parámetros. |
| Union\(IWindow2D, Point2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [Point2D](point2d.md)pasados por parámetros. |
| Union\(Window3D, Point3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [Point3D](point3d.md)pasados por parámetros. |
| Union\(Window3D, Point2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [Point2D](point2d.md)pasados por parámetros. |
| Union\(Window2D, Point3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [Point3D](point3d.md)pasados por parámetros. |
| Union\(Window2D, Point2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [Point2D](point2d.md)pasados por parámetros. |
| Union\(IWindow3D, PointF\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(IWindow2D, PointF\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(Window3D, PointF\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(Window2D, PointF\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(IWindow3D, Point\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) pasados por parámetros. |
| Union\(IWindow2D, Point\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) pasados por parámetros. |
| Union\(Window3D, Point\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) pasados por parámetros. |
| Union\(Window2D, Point\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) pasados por parámetros. |
| Union\(IWindow3D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [IWindow3D](iwindow3d/)pasados por parámetros. |
| Union\(IWindow2D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [IWindow3D](iwindow3d/)pasados por parámetros. |
| Union\(IWindow3D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [IWindow2D](iwindow2d/)pasados por parámetros. |
| Union\(IWindow2D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [IWindow2D](iwindow2d/)pasados por parámetros. |
| Union\(IWindow3D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [Window3D](window3d.md)pasados por parámetros. |
| Union\(IWindow3D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y el [Window2D](window2d.md)pasados por parámetros. |
| Union\(IWindow2D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [Window3D](window3d.md)pasados por parámetros. |
| Union\(IWindow2D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y el [Window2D](window2d.md)pasados por parámetros. |
| Union\(Window3D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [IWindow3D](iwindow3d/)pasados por parámetros. |
| Union\(Window3D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [IWindow2D](iwindow2d/)pasados por parámetros. |
| Union\(Window2D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [IWindow3D](iwindow3d/)pasados por parámetros. |
| Union\(Window2D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [IWindow2D](iwindow2d/)pasados por parámetros. |
| Union\(Window3D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [Window3D](window3d.md)pasados por parámetros. |
| Union\(Window3D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y el [Window2D](window2d.md)pasados por parámetros. |
| Union\(Window2D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [Window3D](window3d.md)pasados por parámetros. |
| Union\(Window2D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y el [Window2D](window2d.md)pasados por parámetros. |
| Union\(IWindow3D, double, double, double, double\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow3D](iwindow3d/)y las máximas y mínimas pasadas por parámetros. |
| Union\(IWindow2D, double, double, double, double\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [IWindow2D](iwindow2d/)y las máximas y mínimas pasadas por parámetros. |
| Union\(Window3D, double, double, double, double\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window3D](window3d.md)y las máximas y mínimas pasadas por parámetros. |
| Union\(Window2D, double, double, double, double\) | Instancia un nuevo [Window2D](window2d.md)que abarcará las máximas del [Window2D](window2d.md)y las máximas y mínimas pasadas por parámetros. |
| Intersection\(double?, double, double, double, double?, double, double, double\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección las máximas y mínimas pasadas por parámetros. |
| Intersection\(IWindow3D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow3D](iwindow3d/)y el [IWindow3D](iwindow3d/)pasados por parámetros. |
| Intersection\(IWindow3D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow3D](iwindow3d/)y el [IWindow2D](iwindow2d/)pasados por parámetros. |
| Intersection\(IWindow2D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) pasados por parámetros. |
| Intersection\(IWindow2D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) pasados por parámetros. |
| Intersection\(IWindow3D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) pasados por parámetros. |
| Intersection\(IWindow3D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) pasados por parámetros. |
| Intersection\(IWindow2D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) pasados por parámetros. |
| Intersection\(IWindow2D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) pasados por parámetros. |
| Intersection\(Window3D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasados por parámetros. |
| Intersection\(Window3D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasados por parámetros. |
| Intersection\(Window2D, IWindow3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) pasados por parámetros. |
| Intersection\(Window2D, IWindow2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) pasados por parámetros. |
| Intersection\(Window3D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasados por parámetros. |
| Intersection\(Window3D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) pasados por parámetros. |
| Intersection\(Window2D, Window3D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) pasados por parámetros. |
| Intersection\(Window2D, Window2D\) | Instancia un nuevo [Window2D](window2d.md)que abarcará la intersección [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) pasados por parámetros. |
| Contains\(double?, double, double, double, double?, double, double, double\) | Indica si la ventana formada por los primeros cuatro parámetros contiene a la formada por los últimos cuatro parámetros. |
| Contains\(IWindow3D, Window3D\) | Indica si la ventana representada por el parámetro [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |
| Contains\(IWindow3D, Window2D\) | Indica si la ventana representada por el parámetro [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |
| Contains\(IWindow2D, Window3D\) | Indica si la ventana representada por el parámetro [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/). |
| Contains\(IWindow2D, Window2D\) | Indica si la ventana representada por el parámetro [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/). |
| Contains\(Window3D, IWindow3D\) | Indica si la ventana representada por el parámetro [Window3D](window3d.md)contiene a la representada por el parámetro [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |
| Contains\(Window3D, IWindow2D\) | Indica si la ventana representada por el parámetro [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md). |
| Contains\(Window2D, IWindow3D\) | Indica si la ventana representada por el parámetro [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md). |
| Contains\(Window2D, IWindow2D\) | Indica si la ventana representada por el parámetro [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md). |
| Contains\(Window3D, Window3D\) | Indica si la ventana representada por el parámetro [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md). |
| Contains\(Window3D, Window2D\) | Indica si la ventana representada por el parámetro [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md). |
| Contains\(Window2D, Window3D\) | Indica si la ventana representada por el parámetro [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md). |
| Contains\(Window2D, Window2D\) | Indica si la ventana representada por el parámetro [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md). |
| Intersects\(double, double, double, double, double, double, double, double\) | Indica si la ventana formada por los primeros cuatro parámetros intersecciona con la formada por los últimos cuatro parámetros. |
| Intersects\(double?, double, double, double, double?, double, double, double\) | Indica si la ventana formada por los primeros cuatro parámetros intersecciona con la formada por los últimos cuatro parámetros. |
| Intersects\(IWindow3D, IWindow3D\) | Indica si la ventana representada por el parámetro [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |
| Intersects\(IWindow3D, IWindow2D\) | Indica si la ventana representada por el parámetro [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |
| Intersects\(IWindow2D, IWindow3D\) | Indica si la ventana representada por el parámetro [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/). |
| Intersects\(IWindow2D, IWindow2D\) | Indica si la ventana representada por el parámetro [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/). |
| Intersects\(Window3D, Window3D\) | Indica si la ventana representada por el parámetro [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md). |
| Intersects\(Window3D, Window2D\) | Indica si la ventana representada por el parámetro [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md). |
| Intersects\(Window2D, Window3D\) | Indica si la ventana representada por el parámetro [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md). |
| Intersects\(Window2D, Window2D\) | Indica si la ventana representada por el parámetro [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md). |

