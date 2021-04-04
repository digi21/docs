# ReadOnlyLine

Espacio de nombres: [Digi21.DigiNG.Entities](./)  
Ensamblado: [Digi21.DigiNG](../)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\) de solo lectura.

```csharp
public class ReadOnlyLine : Entity, ICloseable, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](entity/) → ReadOnlyLine

Tipos derivados: [Line](line.md)

Implementa: [ICloseable](icloseable/), [ISnapable](isnapable/), [IClippable](iclippable/), [ITrimable](itrimmable/)

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
      <td style="text-align:left">Area</td>
      <td style="text-align:left">Devuelve el &#xE1;rea del <a href="readonlyline.md">ReadOnlyLine</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Perimeter3D</td>
      <td style="text-align:left">Devuelve el per&#xED;metro 3D del <a href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Perimeter</td>
      <td style="text-align:left">Devuelve el per&#xED;metro en el plano X, Y del <a href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">InteriorPoint</td>
      <td style="text-align:left">Calcula un punto interior en el <a href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">ClosedXYZ</td>
      <td style="text-align:left">
        <p>Indica si el primer y &#xFA;ltimo v&#xE9;rtices del ReadOnlyLine coinciden
          en X, Y, Z.</p>
        <p>(Heredado de <a href="icloseable/">ICloseable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Closed</td>
      <td style="text-align:left">
        <p>Indica si el primer y &#xFA;ltimo v&#xE9;rtices del ReadOnlyLine coinciden
          en X, Y.</p>
        <p>(Heredado de <a href="icloseable/">ICloseable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">LastSegment</td>
      <td style="text-align:left">Devuelve un Segment referenciando al &#xFA;ltimo segmento del <a href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">FirstSegment</td>
      <td style="text-align:left">Devuelve un Segment referenciando al primer segmento del <a href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">LastVertex</td>
      <td style="text-align:left">Devuelve un Point3D con las coordenadas del &#xFA;ltimo v&#xE9;rtice del
        <a
        href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">FirstVertex</td>
      <td style="text-align:left">Devuelve un Point3D con las coordenadas del primer v&#xE9;rtice del
        <a
        href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">Points</td>
      <td style="text-align:left">Devuelve un <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0">IReadOnlyList </a>con
        los v&#xE9;rtices del <a href="readonlyline.md">ReadOnlyLine</a>.</td>
    </tr>
  </tbody>
</table>





