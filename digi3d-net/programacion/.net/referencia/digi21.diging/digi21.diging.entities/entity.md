# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](./)  
Ensamblado: [Digi21.DigiNG](../)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](readonlycomplex.md), [ReadOnlyLine](readonlyline.md), [ReadOnlyPoint](readonlypoint.md), [ReadOnlyPolygon](readonlypolygon.md), [ReadOnlyText](readonlytext.md).

Implementa: [ICloneable](icloseable.md), [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0), [IWindow3D](../digi21.math/iwindow3d/)

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
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/w.md">W</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al oeste del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/sw.md">SW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/s.md">S</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sur del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/se.md">SE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/e.md">E</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al este del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/ne.md">NE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/n.md">N</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al norte del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/nw.md">NW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/center.md">Center</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto en el centro del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/depth.md">Depth</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el largo del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/height.md">Height</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el alto del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/width.md">Width</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el ancho del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/valid.md">Valid</a>
      </td>
      <td style="text-align:left">Indica si las m&#xE1;ximas y m&#xED;nimas del <a href="entity.md">Entity</a> son
        v&#xE1;lidas.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/xmin.md">Xmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xED;nima del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/ymin.md">Ymin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xED;nima del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/zmin.md">Zmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xED;nima del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/xmax.md">Xmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xE1;xima del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/ymax.md">Ymax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xE1;xima del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/zmax.md">Zmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xE1;xima del <a href="entity.md">Entity</a>.</p>
        <p>(Heredado de <a href="../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Owner</td>
      <td style="text-align:left">Devuelve el <a href="../digi21.diging.io/idrawingfile.md">IDrawingFile </a>al
        que pertenece el <a href="entity.md">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Deleted</td>
      <td style="text-align:left">Especifica si el <a href="entity.md">Entity </a>est&#xE1; eliminado.</td>
    </tr>
    <tr>
      <td style="text-align:left">ReadOnly</td>
      <td style="text-align:left">Especifica si el <a href="entity.md">Entity</a> es de solo lectura (ya est&#xE1;
        almacenada en alg&#xFA;n IDrawingFile)</td>
    </tr>
    <tr>
      <td style="text-align:left">FillColor</td>
      <td style="text-align:left">Especifica el color de relleno del <a href="entity.md">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Weight</td>
      <td style="text-align:left">Especifica el grosor del <a href="entity.md">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Color</td>
      <td style="text-align:left">Especifica el color del <a href="entity.md">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Codes</td>
      <td style="text-align:left">Devuelve un objeto <a href="codecollection.md">CodeCollection </a>con los
        c&#xF3;digos del <a href="entity.md">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Visible</td>
      <td style="text-align:left">Indica si el <a href="entity.md">Entity</a> es visible.</td>
    </tr>
    <tr>
      <td style="text-align:left">CreationTime</td>
      <td style="text-align:left">Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0">DateTime </a>con
        la fecha de creaci&#xF3;n del <a href="entity.md">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Offset</td>
      <td style="text-align:left">Indica el &#xED;ndice del <a href="entity.md">Entity</a> en el <a href="../digi21.diging.io/idrawingfile.md">IDrawingFile </a>en
        el que est&#xE1; almacenado.</td>
    </tr>
  </tbody>
</table>

