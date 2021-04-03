# Window2D

Espacio de nombres: [Digi21.Math](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math)  
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Esta clase implementa una ventana en dos dimensiones.

```csharp
public struct Window2D : IWindow2D, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Window2D

Implementa: [IWindow2D](iwindow2d/), [IDesplazable](idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| Window2D\(Point3D\) | Inicializa una nueva instancia de un [Window2D ](window2d.md)cuyas máximas y mínimas coinciden con el [Point3D ](point3d.md)pasado por parámetros. |
| Window2D\(Point2D\) | Inicializa una nueva instancia de un [Window2D ](window2d.md)cuyas máximas y mínimas coinciden con el [Point2D](point2d.md) pasado por parámetros. |
| Window2D\(double, double, double, double\) | Inicializa una nueva instancia de un [Window2D ](window2d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros. |
| Window2D\(double?, double, double, double\) | Inicializa una nueva instancia de un [Window2D ](window2d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros. |
| Window2D\(IWindow3D\) | Inicializa una nueva instancia de un [Window2D ](window2d.md)cuyas máximas y mínimas coinciden con las del objeto pasado por parámetros. |
| Window2D\(IWindow2D\) | Inicializa una nueva instancia de un [Window2D ](window2d.md)cuyas máximas y mínimas coinciden con las del objeto pasado por parámetros. |

## Propiedades estáticas

|  |  |
| :--- | :--- |
| WholeWorld | Devuelve un [Window2D ](window2d.md)que representa todo el universo. |

## ‌Propiedades

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x200B;Title</th>
      <th style="text-align:left">&#x200B;Title</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/w">W</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al oeste del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/sw">SW</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/s">S</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al sur del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/se">SE</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/e">E</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al este del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/ne">NE</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/n">N</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al norte del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/nw">NW</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/center">Center</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el punto en el centro del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/height">Height</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el alto del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/width">Width</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve el ancho del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/valid">Valid</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Indica si la ventana del <a href="window2d.md">Window2D</a> es v&#xE1;lida.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/xmin">Xmin</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve la coordenada X m&#xED;nima del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/ymin">Ymin</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve la coordenada Y m&#xED;nima del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/xmax">Xmax</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve la coordenada X m&#xE1;xima del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x200B;<a href="https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/iwindow2d/propiedades/ymax">Ymax</a>&#x200B;</td>
      <td
      style="text-align:left">
        <p>Devuelve la coordenada Y m&#xE1;xima del <a href="window2d.md">Window2D</a>.</p>
        <p>(Heredado de <a href="iwindow2d/">IWindow2D</a>)</p>
        </td>
    </tr>
  </tbody>
</table>

## ​Métodos

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-point-2-d">Offset(Point2D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window2d.md">Window2D</a> tantas unidades en X, Y como
          se indique en el par&#xE1;metro.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window2d.md">Window2D</a> tantas unidades en X, Y,
          Z como se indique en el par&#xE1;metro.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window2d.md">Window2D</a> tantas unidades en X, Y como
          se indique en los par&#xE1;metros.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-double-doublem-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window2d.md">Window2D</a> tantas unidades en X, Y,
          Z como se indique en los par&#xE1;metros.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(double, double)</td>
      <td style="text-align:left">Hace crecer tanto la X m&#xED;nima como la X m&#xE1;xima del <a href="window2d.md">Window2D</a> tantas
        unidades como las especificadas en el primer par&#xE1;metro y de manera
        similar en el eje Y con el valor especificado en el segundo par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(Point2D)</td>
      <td style="text-align:left">Hace crecer tanto la X m&#xED;nima, X m&#xE1;xima, Y m&#xED;nima, Y m&#xE1;xima
        del <a href="window2d.md">Window2D</a> tantas unidades como las especificadas
        en el <a href="point2d.md">Point2D </a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(Size)</td>
      <td style="text-align:left">Hace crecer tanto la X m&#xED;nima, X m&#xE1;xima, Y m&#xED;nima, Y m&#xE1;xima
        del <a href="window2d.md">Window2D</a> tantas unidades como las especificadas
        en el <a href="https://docs.microsoft.com/en-us/dotnet/api/system.windows.size?view=net-5.0">Size</a> pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(IWindow3D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="iwindow3d/">IWindow3D </a>pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(IWindow2D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="iwindow2d/">IWindow2D</a> pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Window3D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="window3d.md">Window3D</a> pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Window2D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="window2d.md">Window2D</a> pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Point3D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="point3d.md">Point3D </a>pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Point2D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="point2d.md">Point2D</a> pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(PointF)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0">PointF</a> pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Point)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0">Point</a> pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(double, double, double, double)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window2d.md">Window2D </a>para
        que contenga las m&#xE1;ximas y m&#xED;nimas pasadas por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersection(double?, double, double, double)</td>
      <td style="text-align:left">Calcula la intersecci&#xF3;n entre el <a href="window2d.md">Window2D </a>y
        las m&#xE1;ximas y m&#xED;nimas pasadas por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersection(IWindow3D)</td>
      <td style="text-align:left">Calcula la intersecci&#xF3;n entre el <a href="window2d.md">Window2D </a>y
        el <a href="iwindow3d/">IWindow3D </a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersection(IWindow2D)</td>
      <td style="text-align:left">Calcula la intersecci&#xF3;n entre el <a href="window2d.md">Window2D </a>y
        el <a href="iwindow2d/">IWindow2D </a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersection(Window3D)</td>
      <td style="text-align:left">Calcula la intersecci&#xF3;n entre el <a href="window2d.md">Window2D </a>y
        el <a href="window3d.md">Window3D </a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersection(Window2D)</td>
      <td style="text-align:left">Calcula la intersecci&#xF3;n entre el <a href="window2d.md">Window2D </a>y
        el <a href="window2d.md">Window2D </a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(double, double, double, double)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene las m&#xE1;ximas
        y m&#xED;nimas pasadas por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(IWindow3D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="iwindow3d/">IWindow3D </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(IWindow2D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="iwindow2d/">IWindow2D </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Window3D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="window3d.md">Window3D </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Window2D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="window2d.md">Window2D </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Point3D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="point3d.md">Point3D </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Point2D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="point2d.md">Point2D </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(PointF)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0">PointF</a> pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Point)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>contiene al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0">Point </a>pasado
        por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersects(double, double, double, double)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>intersecciona con las m&#xE1;ximas
        y m&#xED;nimas pasadas por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersects(double?, double, double, double)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>intersecciona con las m&#xE1;ximas
        y m&#xED;nimas pasadas por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersects(IWindow3D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>intersecciona con el
        <a
        href="iwindow3d/">IWindow3D</a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersects(IWindow2D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>intersecciona con el
        <a
        href="iwindow2d/">IWindow2D</a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersects(Window3D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>intersecciona con el
        <a
        href="window3d.md">Window3D</a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersects(Window2D)</td>
      <td style="text-align:left">Indica si el <a href="window2d.md">Window2D </a>intersecciona con el
        <a
        href="window2d.md">Window2D</a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">ToString()</td>
      <td style="text-align:left">Convierte este <a href="window2d.md">Window2D</a> en una cadena legible
        para los humanos.</td>
    </tr>
  </tbody>
</table>

## Métodos estáticos

|  |  |
| :--- | :--- |
| Union\(IWindow3D, Point3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [Point3D ](point3d.md)pasados por parámetros. |
| Union\(IWindow3D, Point2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [Point2D ](point2d.md)pasados por parámetros. |
| Union\(IWindow2D, Point3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [Point3D ](point3d.md)pasados por parámetros. |
| Union\(IWindow2D, Point2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [Point2D ](point2d.md)pasados por parámetros. |
| Union\(Window3D, Point3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [Point3D ](point3d.md)pasados por parámetros. |
| Union\(Window3D, Point2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [Point2D ](point2d.md)pasados por parámetros. |
| Union\(Window2D, Point3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [Point3D ](point3d.md)pasados por parámetros. |
| Union\(Window2D, Point2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [Point2D ](point2d.md)pasados por parámetros. |
| Union\(IWindow3D, PointF\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(IWindow2D, PointF\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(Window3D, PointF\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(Window2D, PointF\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [PointF](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0) pasados por parámetros. |
| Union\(IWindow3D, Point\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0) pasados por parámetros. |
| Union\(IWindow2D, Point\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0) pasados por parámetros. |
| Union\(Window3D, Point\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0) pasados por parámetros. |
| Union\(Window2D, Point\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [Point](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0) pasados por parámetros. |
| Union\(IWindow3D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [IWindow3D ](iwindow3d/)pasados por parámetros. |
| Union\(IWindow2D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [IWindow3D ](iwindow3d/)pasados por parámetros. |
| Union\(IWindow3D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [IWindow2D ](iwindow2d/)pasados por parámetros. |
| Union\(IWindow2D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [IWindow2D ](iwindow2d/)pasados por parámetros. |
| Union\(IWindow3D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [Window3D ](window3d.md)pasados por parámetros. |
| Union\(IWindow3D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y el [Window2D ](window2d.md)pasados por parámetros. |
| Union\(IWindow2D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [Window3D ](window3d.md)pasados por parámetros. |
| Union\(IWindow2D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y el [Window2D ](window2d.md)pasados por parámetros. |
| Union\(Window3D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [IWindow3D ](iwindow3d/)pasados por parámetros. |
| Union\(Window3D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [IWindow2D ](iwindow2d/)pasados por parámetros. |
| Union\(Window2D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [IWindow3D ](iwindow3d/)pasados por parámetros. |
| Union\(Window2D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [IWindow2D ](iwindow2d/)pasados por parámetros. |
| Union\(Window3D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [Window3D ](window3d.md)pasados por parámetros. |
| Union\(Window3D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y el [Window2D ](window2d.md)pasados por parámetros. |
| Union\(Window2D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [Window3D ](window3d.md)pasados por parámetros. |
| Union\(Window2D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y el [Window2D ](window2d.md)pasados por parámetros. |
| Union\(IWindow3D, double, double, double, double\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow3D ](iwindow3d/)y las máximas y mínimas pasadas por parámetros. |
| Union\(IWindow2D, double, double, double, double\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [IWindow2D ](iwindow2d/)y las máximas y mínimas pasadas por parámetros. |
| Union\(Window3D, double, double, double, double\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window3D ](window3d.md)y las máximas y mínimas pasadas por parámetros. |
| Union\(Window2D, double, double, double, double\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará las máximas del [Window2D ](window2d.md)y las máximas y mínimas pasadas por parámetros. |
| Intersection\(double?, double, double, double, double?, double, double, double\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección las máximas y mínimas pasadas por parámetros. |
| Intersection\(IWindow3D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow3D ](iwindow3d/)y el [IWindow3D ](iwindow3d/)pasados por parámetros. |
| Intersection\(IWindow3D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow3D ](iwindow3d/)y el [IWindow2D ](iwindow2d/)pasados por parámetros. |
| Intersection\(IWindow2D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow2D](iwindow2d/) y el [IWindow3D](iwindow3d/) pasados por parámetros. |
| Intersection\(IWindow2D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow2D](iwindow2d/) y el [IWindow2D](iwindow2d/) pasados por parámetros. |
| Intersection\(IWindow3D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow3D](iwindow3d/) y el [Window3D](window3d.md) pasados por parámetros. |
| Intersection\(IWindow3D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow3D](iwindow3d/) y el [Window2D](window2d.md) pasados por parámetros. |
| Intersection\(IWindow2D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow2D](iwindow2d/) y el [Window3D](window3d.md) pasados por parámetros. |
| Intersection\(IWindow2D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [IWindow2D](iwindow2d/) y el [Window2D](window2d.md) pasados por parámetros. |
| Intersection\(Window3D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window3D](window3d.md) y el [IWindow3D](iwindow3d/) pasados por parámetros. |
| Intersection\(Window3D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window3D](window3d.md) y el [IWindow2D](iwindow2d/) pasados por parámetros. |
| Intersection\(Window2D, IWindow3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window2D](window2d.md) y el [IWindow3D](iwindow3d/) pasados por parámetros. |
| Intersection\(Window2D, IWindow2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window2D](window2d.md) y el [IWindow2D](iwindow2d/) pasados por parámetros. |
| Intersection\(Window3D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window3D](window3d.md) y el [Window3D](window3d.md) pasados por parámetros. |
| Intersection\(Window3D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window3D](window3d.md) y el [Window2D](window2d.md) pasados por parámetros. |
| Intersection\(Window2D, Window3D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window2D](window2d.md) y el [Window3D](window3d.md) pasados por parámetros. |
| Intersection\(Window2D, Window2D\) | Instancia un nuevo [Window2D ](window2d.md)que abarcará la intersección [Window2D](window2d.md) y el [Window2D](window2d.md) pasados por parámetros. |
| Contains\(double?, double, double, double, double?, double, double, double\) | Indica si la ventana formada por los primeros cuatro parámetros contiene a la formada por los últimos cuatro parámetros. |
| Contains\(IWindow3D, Window3D\) | Indica si la ventana representada por el parámetro [IWindow3D](iwindow3d/) contiene a la representada por el parámetro [Window3D](window3d.md). |
| Contains\(IWindow3D, Window2D\) | Indica si la ventana representada por el parámetro [IWindow3D](iwindow3d/) contiene a la representada por el parámetro [Window2D](window2d.md). |
| Contains\(IWindow2D, Window3D\) | Indica si la ventana representada por el parámetro [IWindow2D](iwindow2d/) contiene a la representada por el parámetro [Window3D](window3d.md). |
| Contains\(IWindow2D, Window2D\) | Indica si la ventana representada por el parámetro [IWindow2D](iwindow2d/) contiene a la representada por el parámetro [Window2D](window2d.md). |
| Contains\(Window3D, IWindow3D\) | Indica si la ventana representada por el parámetro [Window3D ](window3d.md)contiene a la representada por el parámetro [IWindow3D](iwindow3d/). |
| Contains\(Window3D, IWindow2D\) | Indica si la ventana representada por el parámetro [Window3D](window3d.md) contiene a la representada por el parámetro [IWindow2D](iwindow2d/). |
| Contains\(Window2D, IWindow3D\) | Indica si la ventana representada por el parámetro [Window2D](window2d.md) contiene a la representada por el parámetro [IWindow3D](iwindow3d/). |
| Contains\(Window2D, IWindow2D\) | Indica si la ventana representada por el parámetro [Window2D](window2d.md) contiene a la representada por el parámetro [IWindow2D](iwindow2d/). |
| Contains\(Window3D, Window3D\) | Indica si la ventana representada por el parámetro [Window3D](window3d.md) contiene a la representada por el parámetro [Window3D](window3d.md). |
| Contains\(Window3D, Window2D\) | Indica si la ventana representada por el parámetro [Window3D](window3d.md) contiene a la representada por el parámetro [Window2D](window2d.md). |
| Contains\(Window2D, Window3D\) | Indica si la ventana representada por el parámetro [Window2D](window2d.md) contiene a la representada por el parámetro [Window3D](window3d.md). |
| Contains\(Window2D, Window2D\) | Indica si la ventana representada por el parámetro [Window2D](window2d.md) contiene a la representada por el parámetro [Window2D](window2d.md). |
| Intersects\(double, double, double, double, double, double, double, double\) | Indica si la ventana formada por los primeros cuatro parámetros intersecciona con la formada por los últimos cuatro parámetros. |
| Intersects\(double?, double, double, double, double?, double, double, double\) | Indica si la ventana formada por los primeros cuatro parámetros intersecciona con la formada por los últimos cuatro parámetros. |
| Intersects\(IWindow3D, IWindow3D\) | Indica si la ventana representada por el parámetro [IWindow3D](iwindow3d/) intersecciona con la representada por el parámetro [IWindow3D](iwindow3d/). |
| Intersects\(IWindow3D, IWindow2D\) | Indica si la ventana representada por el parámetro [IWindow3D](iwindow3d/) intersecciona con la representada por el parámetro [IWindow2D](iwindow2d/). |
| Intersects\(IWindow2D, IWindow3D\) | Indica si la ventana representada por el parámetro [IWindow2D](iwindow2d/) intersecciona con la representada por el parámetro [IWindow3D](iwindow3d/). |
| Intersects\(IWindow2D, IWindow2D\) | Indica si la ventana representada por el parámetro [IWindow2D](iwindow2d/) intersecciona con la representada por el parámetro [IWindow2D](iwindow2d/). |
| Intersects\(Window3D, Window3D\) | Indica si la ventana representada por el parámetro [Window3D](window3d.md) intersecciona con la representada por el parámetro [Window3D](window3d.md). |
| Intersects\(Window3D, Window2D\) | Indica si la ventana representada por el parámetro [Window3D](window3d.md) intersecciona con la representada por el parámetro [Window2D](window2d.md). |
| Intersects\(Window2D, Window3D\) | Indica si la ventana representada por el parámetro [Window2D](window2d.md) intersecciona con la representada por el parámetro [Window3D](window3d.md). |
| Intersects\(Window2D, Window2D\) | Indica si la ventana representada por el parámetro [Window2D](window2d.md) intersecciona con la representada por el parámetro [Window2D](window2d.md). |

