# ReadOnlyLine

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\) de solo lectura.

```csharp
public class ReadOnlyLine : Entity, ICloseable, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → ReadOnlyLine

Tipos derivados: [Line](../line.md)

Implementa: [ICloseable](../icloseable/), [ISnapable](../isnapable/), [IClippable](../iclippable/), [ITrimable](../itrimmable/)

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
      <td style="text-align:left"><a href="propiedades/area.md">Area</a>
      </td>
      <td style="text-align:left">Devuelve el &#xE1;rea del <a href="./">ReadOnlyLine</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/perimeter3d.md">Perimeter3D</a>
      </td>
      <td style="text-align:left">Devuelve el per&#xED;metro 3D del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/perimeter.md">Perimeter</a>
      </td>
      <td style="text-align:left">Devuelve el per&#xED;metro en el plano X, Y del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../icloseable/propiedades/interiorpoint.md">InteriorPoint</a>
      </td>
      <td style="text-align:left">Calcula un punto interior en el <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../icloseable/propiedades/closedxyz.md">ClosedXYZ</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el primer y &#xFA;ltimo v&#xE9;rtices del <a href="./">ReadOnlyLine</a> coinciden
          en X, Y, Z.</p>
        <p>(Heredado de <a href="../icloseable/">ICloseable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../icloseable/propiedades/closed.md">Closed</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el primer y &#xFA;ltimo v&#xE9;rtices del <a href="./">ReadOnlyLine</a> coinciden
          en X, Y.</p>
        <p>(Heredado de <a href="../icloseable/">ICloseable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/lastsegment.md">LastSegment</a>
      </td>
      <td style="text-align:left">Devuelve un Segment referenciando al &#xFA;ltimo segmento del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/firstsegment.md">FirstSegment</a>
      </td>
      <td style="text-align:left">Devuelve un Segment referenciando al primer segmento del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/lastvertex.md">LastVertex</a>
      </td>
      <td style="text-align:left">Devuelve un Point3D con las coordenadas del &#xFA;ltimo v&#xE9;rtice del
        <a
        href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/firstvertex.md">FirstVertex</a>
      </td>
      <td style="text-align:left">Devuelve un Point3D con las coordenadas del primer v&#xE9;rtice del
        <a
        href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/points.md">Points</a>
      </td>
      <td style="text-align:left">Devuelve un <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0">IReadOnlyList </a>con
        los v&#xE9;rtices del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/w.md">W</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al oeste del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/sw.md">SW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/s.md">S</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sur del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/se.md">SE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/e.md">E</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al este del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/ne.md">NE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/n.md">N</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al norte del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/nw.md">NW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/center.md">Center</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto en el centro del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/depth.md">Depth</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el largo del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/height.md">Height</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el alto del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/width.md">Width</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el ancho del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/valid.md">Valid</a>
      </td>
      <td style="text-align:left">
        <p>Indica si las m&#xE1;ximas y m&#xED;nimas del <a href="./">ReadOnlyLine</a> son
          v&#xE1;lidas.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/xmin.md">Xmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xED;nima del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/ymin.md">Ymin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xED;nima del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/zmin.md">Zmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xED;nima del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/xmax.md">Xmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xE1;xima del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/ymax.md">Ymax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xE1;xima del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/zmax.md">Zmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xE1;xima del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/owner.md">Owner</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile </a>al
          que pertenece el <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/deleted.md">Deleted</a>
      </td>
      <td style="text-align:left">
        <p>Especifica si el <a href="./">ReadOnlyLine</a><a href="../entity/"> </a>est&#xE1;
          eliminado.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/readonly.md">ReadOnly</a>
      </td>
      <td style="text-align:left">
        <p>Especifica si el <a href="./">ReadOnlyLine</a> es de solo lectura (ya est&#xE1;
          almacenada en alg&#xFA;n <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile</a>)</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/fillcolor.md">FillColor</a>
      </td>
      <td style="text-align:left">
        <p>Especifica el color de relleno del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/weight.md">Weight</a>
      </td>
      <td style="text-align:left">
        <p>Especifica el grosor del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/color.md">Color</a>
      </td>
      <td style="text-align:left">
        <p>Especifica el color del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/codes.md">Codes</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un objeto <a href="../codecollection.md">CodeCollection </a>con
          los c&#xF3;digos del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/visible.md">Visible</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el <a href="./">ReadOnlyLine</a> es visible.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/creationtime.md">CreationTime</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0">DateTime </a>con
          la fecha de creaci&#xF3;n del <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/offset.md">Offset</a>
      </td>
      <td style="text-align:left">
        <p>Indica el <em>offset</em> en el que est&#xE1; almacenado el <a href="./">ReadOnlyLine</a> en
          el <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/database.md">Database</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0">IDictionary&lt;&gt;</a> con
          los atributos de base de datos de cada c&#xF3;digo que tenga el <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../entity/propiedades/hidden.md">Hidden</a>
      </td>
      <td style="text-align:left">
        <p>Comprueba y permite indicar si ocultar la visualizaci&#xF3;n de este
          <a
          href="./">ReadOnlyLine</a>en la ventana de dibujo.</p>
        <p>(Heredado de <a href="../entity/">Entity</a>)</p>
      </td>
    </tr>
  </tbody>
</table>





