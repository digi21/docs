# Window3D

Espacio de nombres: [Digi21.Math](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math)  
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXH1bS47Iib8Zhh9V4J/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Esta clase implementa una ventana en tres dimensiones.

```csharp
public struct Window3D : IWindow3D, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [ValueType](https://docs.microsoft.com/en-us/dotnet/api/system.valuetype?view=net-5.0) → Window3D

Implementa: [IWindow3D](iwindow3d/), [IDesplazable](idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| Window3D\(Point3D point\) | Inicializa una nueva instancia de un [Window3D](window3d.md) cuyas máximas y mínimas coinciden con el [Point3D ](point3d.md)pasado por parámetros. |
| Window3D\(double, double, double, double, double, double\) | Inicializa una nueva instancia de un [Window3D](window3d.md)[ ](window2d.md)cuyas máximas y mínimas coinciden con los valores pasados por parámetros. |
| Window3D\(IWindow3D\) | Inicializa una nueva instancia de un [Window3D](window3d.md) cuyas máximas y mínimas coinciden con el [IWindow3D](iwindow3d/)[ ](point3d.md)pasado por parámetros. |

## Propiedades

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/w.md">W</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al oeste del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/sw.md">SW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/s.md">S</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sur del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/se.md">SE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/e.md">E</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al este del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/ne.md">NE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/n.md">N</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al norte del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/nw.md">NW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/center.md">Center</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto en el centro del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/depth.md">Depth</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el largo del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/height.md">Height</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el alto del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/width.md">Width</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el ancho del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/valid.md">Valid</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el <a href="window3d.md">Window3D</a> es v&#xE1;lido.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/xmin.md">Xmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xED;nima del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/ymin.md">Ymin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xED;nima del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/zmin.md">Zmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xED;nima del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/xmax.md">Xmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xE1;xima del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/ymax.md">Ymax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xE1;xima del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="iwindow3d/propiedades/zmax.md">Zmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xE1;xima del <a href="window3d.md">Window3D</a>.</p>
        <p>(Heredado de <a href="iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

## Métodos

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
        <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y como
          se indique en el par&#xE1;metro.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y,
          Z como se indique en el par&#xE1;metro.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y como
          se indique en los par&#xE1;metros.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-double-doublem-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="window3d.md">Window3D</a> tantas unidades en X, Y,
          Z como se indique en los par&#xE1;metros.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(double, double, double)</td>
      <td style="text-align:left">Hace crecer tanto la X m&#xED;nima como la X m&#xE1;xima del <a href="window3d.md">Window3D</a> tantas
        unidades como las especificadas en el primer par&#xE1;metro y de manera
        similar en los ejes Y,Z con los valores especificados en el segundo y tercer
        par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(double, double)</td>
      <td style="text-align:left">Hace crecer tanto la X m&#xED;nima como la X m&#xE1;xima del <a href="window3d.md">Window3D</a> tantas
        unidades como las especificadas en el primer par&#xE1;metro y de manera
        similar en el eje Y con el valor especificado en el segundo par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(Point3D)</td>
      <td style="text-align:left">Hace crecer las m&#xE1;ximas y m&#xED;nimas del <a href="window3d.md">Window3D</a> tantas
        unidades como las especificadas en el <a href="point3d.md">Point3D</a>
        <a
        href="point2d.md"></a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Inflate(Size)</td>
      <td style="text-align:left">Hace crecer las m&#xE1;ximas y m&#xED;nimas del <a href="window3d.md">Window3D</a> tantas
        unidades como las especificadas en el <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.size?view=net-5.0">Size</a>
        <a
        href="point2d.md"></a>pasado por par&#xE1;metro.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(IWindow3D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window3d.md">Window3D</a><a href="window2d.md"> </a>para
        que contenga al <a href="iwindow3d/">IWindow3D </a>pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Window3D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window3d.md">Window3D</a><a href="window2d.md"> </a>para
        que contenga al <a href="window3d.md">Window3D</a> pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Point3D)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window3d.md">Window3D</a><a href="window2d.md"> </a>para
        que contenga al <a href="point3d.md">Point3D</a> pasado por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(PointF)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window3d.md">Window3D</a><a href="window2d.md"> </a>para
        que contenga al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0">PointF</a> pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(Point)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window3d.md">Window3D</a><a href="window2d.md"> </a>para
        que contenga al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0">Point</a> pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Union(double, double, double, double, double, double)</td>
      <td style="text-align:left">Hace crecer si es necesario el <a href="window3d.md">Window3D</a><a href="window2d.md"> </a>para
        que contenga a las m&#xE1;ximas y m&#xED;nimas pasadas por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(IWindow3D)</td>
      <td style="text-align:left">Indica si el <a href="window3d.md">Window3D </a>contiene al <a href="iwindow3d/">IWindow3D </a>pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Window3D)</td>
      <td style="text-align:left">Indica si el <a href="window3d.md">Window3D </a>contiene al <a href="window3d.md">Window3D </a>pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Point3D)</td>
      <td style="text-align:left">Indica si el <a href="window3d.md">Window3D </a>contiene al <a href="point3d.md">Point3D </a>pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(PointF)</td>
      <td style="text-align:left">Indica si el <a href="window3d.md">Window3D </a>contiene al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.pointf?view=net-5.0">PointF</a> pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Contains(Point)</td>
      <td style="text-align:left">Indica si el <a href="window3d.md">Window3D </a>contiene al <a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0">Point </a>pasado
        por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">Intersect(Window3D)</td>
      <td style="text-align:left">Indica si el <a href="window3d.md">Window3D </a>intersecciona con el
        <a
        href="window3d.md">Window3D</a><a href="https://docs.microsoft.com/en-us/dotnet/api/system.drawing.point?view=net-5.0"> </a>pasado
          por par&#xE1;metros.</td>
    </tr>
    <tr>
      <td style="text-align:left">ToString()</td>
      <td style="text-align:left">Convierte este <a href="window3d.md">Window3D</a> en una cadena legible
        para los humanos.</td>
    </tr>
  </tbody>
</table>

