# ReadOnlyPolygon

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo polígono de solo lectura.

```csharp
public class ReadOnlyPolygon : Entity, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → ReadOnlyPolygon

Tipos derivados: [Polygon](../polygon.md)

Implementa: [ISnapable](../isnapable/), [IClippable](../iclippable/), [ITrimable](../itrimmable/)

## Propiedades

|  |  |
| :--- | :--- |
| [Area](propiedades/area.md) | Devuelve el área del [ReadOnlyPolygon](./). |
| [Holes](propiedades/holes.md) | Devuelve una [IReadOnlyList&lt;T&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0) con los huecos del [ReadOnlyPolygon](./). |
| [Points](propiedades/points.md) | Devuelve un [IReadOnlyList&lt;T&gt; ](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0)con los vértices del límite exterior del [ReadOnlyPolygon](./). |
| [InteriorPoint](propiedades/interiorpoint.md) | Calcula un punto interior en el [ReadOnlyPolygon](./). |

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
      <td style="text-align:left">Devuelve una nueva instancia de <a href="../polygon.md">Polygon</a> id&#xE9;ntica
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

