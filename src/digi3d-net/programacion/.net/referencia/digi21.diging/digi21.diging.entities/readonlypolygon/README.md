# ReadOnlyPolygon

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo polígono de solo lectura.

```csharp
public class ReadOnlyPolygon : Entity, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → ReadOnlyPolygon

Tipos derivados: [Polygon](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)

Implementa: [ISnapable](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/)

## Propiedades

|  |  |
| :--- | :--- |
| [Area](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/area.md). |
| [Holes](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md). |
| [Points](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md). |
| [InteriorPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md). |

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
      <td style="text-align:left"><a href="metodos/clone.md">Clone()</a>
      </td>
      <td style="text-align:left">Devuelve una nueva instancia de <a href="../polygon/">Polygon</a> id&#xE9;ntica
        a la actual pero que no est&#xE1; asignada a ning&#xFA;n <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile</a> de
        manera que no es de solo lectura.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../icloseable/metodos/analyzepointposition.md">AnalyzePointPosition(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un <a href="../pointposition.md">PointPosition </a>especificando
          la posici&#xF3;n relativa de un determinado punto con el <a href="./">ReadOnlyPolygon</a>.</p>
        <p>(Heredado de <a href="../icloseable/">ICloseable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../iclippable/metodos/clip.md">Clip(ReadOnlyLine)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un conjunto de geometr&#xED;as que son el resultado de recortar
          el <a href="./">ReadOnlyPolygon</a> por el l&#xED;mite especificado.</p>
        <p>(Heredado de <a href="../iclippable/">IClippable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../isnapable/metodos/distance.md">Distance(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un vector cuyo m&#xF3;dulo es la distancia al punto m&#xE1;s
          cercano al <a href="./">ReadOnlyPolygon</a>.</p>
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
        <p>Convierte este <a href="./">ReadOnlyPolygon</a> en una cadena legible para
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

