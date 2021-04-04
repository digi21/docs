# ReadOnlyLine

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\) de solo lectura.

```csharp
public class ReadOnlyLine : Entity, ICloseable, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → ReadOnlyLine

Tipos derivados: [Line](../line/)

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
      <td style="text-align:left">Devuelve el &#xE1;rea del <a href="./">ReadOnlyLine</a>.</td>
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
      <td style="text-align:left">
        <p>Calcula un punto interior en el <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../icloseable/">ICloseable</a>)</p>
      </td>
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
      <td style="text-align:left">Devuelve un <a href="../../digi21.math/segment.md">Segment</a> referenciando
        al &#xFA;ltimo segmento del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/firstsegment.md">FirstSegment</a>
      </td>
      <td style="text-align:left">Devuelve un <a href="../../digi21.math/segment.md">Segment </a>referenciando
        al primer segmento del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/lastvertex.md">LastVertex</a>
      </td>
      <td style="text-align:left">Devuelve un <a href="../../digi21.math/point3d.md">Point3D </a>con las
        coordenadas del &#xFA;ltimo v&#xE9;rtice del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/firstvertex.md">FirstVertex</a>
      </td>
      <td style="text-align:left">Devuelve un <a href="../../digi21.math/point3d.md">Point3D </a>con las
        coordenadas del primer v&#xE9;rtice del <a href="./">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/points.md">Points</a>
      </td>
      <td style="text-align:left">Devuelve un <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0">IReadOnlyList </a>con
        los v&#xE9;rtices del <a href="./">ReadOnlyLine</a>.</td>
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
      <td style="text-align:left"><a href="../icloseable/metodos/analyzepointposition.md">AnalyzePointPosition(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un <a href="../pointposition.md">PointPosition </a>especificando
          la posici&#xF3;n relativa de un determinado punto con el <a href="./">ReadOnlyLine</a>.</p>
        <p>(Heredado de <a href="../icloseable/">ICloseable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../iclippable/metodos/clip.md">Clip(ReadOnlyLine)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un conjunto de geometr&#xED;as que son el resultado de recortar
          el <a href="./">ReadOnlyLine</a> por el l&#xED;mite especificado.</p>
        <p>(Heredado de <a href="../iclippable/">IClippable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/clone.md">Clone()</a>
      </td>
      <td style="text-align:left">Devuelve una nueva instancia de <a href="../line/">Line</a> id&#xE9;ntica
        a la actual pero que no est&#xE1; asignada a ning&#xFA;n <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile</a> de
        manera que no es de solo lectura.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../isnapable/metodos/distance.md">Distance(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un vector cuyo m&#xF3;dulo es la distancia al punto m&#xE1;s
          cercano a la geometr&#xED;a.</p>
        <p>(Heredado de <a href="../isnapable/">ISnapable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../isnapable/metodos/nearestsegment.md">NearestSegment(Point3D, out Point3D, out int)</a>
      </td>
      <td style="text-align:left">
        <p>Indica el segmento m&#xE1;s cercano y calcula la proyecci&#xF3;n a dicho
          segmento adem&#xE1;s de devolver la distancia a dicho punto.</p>
        <p>(Heredado de <a href="../isnapable/">ISnapable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../isnapable/metodos/nearestvertex.md">NearestVertex(Point3D, out Point3D, out int)</a>
      </td>
      <td style="text-align:left">
        <p>Indica el v&#xE9;rtice m&#xE1;s cercano, as&#xED; como su &#xED;ndice
          y distancia.</p>
        <p>(Heredado de <a href="../isnapable/">ISnapable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ToString()</td>
      <td style="text-align:left">
        <p>Convierte este <a href="./">ReadOnlyLine</a> en una cadena legible para
          los humanos.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0">Object</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../itrimmable/metodos/trim.md">Trim(ReadOnlyLine, bool)</a>
      </td>
      <td style="text-align:left">
        <p>Indica el v&#xE9;rtice m&#xE1;s cercano, as&#xED; como su &#xED;ndice
          y distancia.</p>
        <p>(Heredado de <a href="../itrimmable/">ITrimable</a>)</p>
      </td>
    </tr>
  </tbody>
</table>



