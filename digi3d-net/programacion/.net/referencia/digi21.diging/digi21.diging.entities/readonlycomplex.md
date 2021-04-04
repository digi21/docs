# ReadOnlyComplex



Espacio de nombres: [Digi21.DigiNG.Entities](./)  
Ensamblado: [Digi21.DigiNG](../)

Esta clase implementa una geometría de tipo Complejo \(que es una geometría compuesta por una colección de geometrías\) de solo lectura.

```csharp
public class ReadOnlyComplex : Entity
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](entity/) → ReadOnlyComplex

Tipos derivados: [Complex](complex.md)

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
      <td style="text-align:left">Entities</td>
      <td style="text-align:left">Devuelve un <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0">IEnumerable </a>con
        todas las geometr&#xED;as que forman parte del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/w.md">W</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al oeste del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/sw.md">SW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/s.md">S</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sur del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/se.md">SE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/e.md">E</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al este del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/ne.md">NE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/n.md">N</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al norte del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/nw.md">NW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/center.md">Center</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto en el centro del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/depth.md">Depth</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el largo del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/height.md">Height</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el alto del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/width.md">Width</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el ancho del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/valid.md">Valid</a>
      </td>
      <td style="text-align:left">
        <p>Indica si las m&#xE1;ximas y m&#xED;nimas del <a href="readonlycomplex.md">ReadOnlyComplex</a> son
          v&#xE1;lidas.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/xmin.md">Xmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xED;nima del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/ymin.md">Ymin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xED;nima del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/zmin.md">Zmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xED;nima del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/xmax.md">Xmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xE1;xima del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/ymax.md">Ymax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xE1;xima del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../digi21.math/iwindow3d/propiedades/zmax.md">Zmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xE1;xima del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/owner.md">Owner</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el <a href="../digi21.diging.io/idrawingfile/">IDrawingFile </a>al
          que pertenece el <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/deleted.md">Deleted</a>
      </td>
      <td style="text-align:left">
        <p>Especifica si el <a href="readonlycomplex.md">ReadOnlyComplex</a><a href="entity/"> </a>est&#xE1;
          eliminado.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/readonly.md">ReadOnly</a>
      </td>
      <td style="text-align:left">
        <p>Especifica si el <a href="readonlycomplex.md">ReadOnlyComplex</a> es de
          solo lectura (ya est&#xE1; almacenada en alg&#xFA;n <a href="../digi21.diging.io/idrawingfile/">IDrawingFile</a>)</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/fillcolor.md">FillColor</a>
      </td>
      <td style="text-align:left">
        <p>Especifica el color de relleno del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/weight.md">Weight</a>
      </td>
      <td style="text-align:left">
        <p>Especifica el grosor del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/color.md">Color</a>
      </td>
      <td style="text-align:left">
        <p>Especifica el color del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/codes.md">Codes</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un objeto <a href="codecollection.md">CodeCollection </a>con los
          c&#xF3;digos del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/visible.md">Visible</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el <a href="readonlycomplex.md">ReadOnlyComplex</a> es visible.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/creationtime.md">CreationTime</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0">DateTime </a>con
          la fecha de creaci&#xF3;n del <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/offset.md">Offset</a>
      </td>
      <td style="text-align:left">
        <p>Indica el &#xED;ndice del <a href="readonlycomplex.md">ReadOnlyComplex</a> en
          el <a href="../digi21.diging.io/idrawingfile/">IDrawingFile </a>en el que
          est&#xE1; almacenado.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="entity/propiedades/database.md">Database</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0">IDictionary&lt;&gt;</a> con
          los atributos de base de datos de cada c&#xF3;digo que tenga el <a href="readonlycomplex.md">ReadOnlyComplex</a>.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
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
      <td style="text-align:left"><a href="entity/metodos/clone.md">Clone</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve una nueva instancia de <a href="readonlycomplex.md">ReadOnlyComplex</a> id&#xE9;ntica
          a la actual pero que no est&#xE1; asignada a ning&#xFA;n <a href="../digi21.diging.io/idrawingfile/">IDrawingFile</a> de
          manera que no es de solo lectura.</p>
        <p>(Heredado de <a href="entity/">Entity</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ToString</td>
      <td style="text-align:left">Convierte este <a href="readonlycomplex.md">ReadOnlyComplex</a> en una cadena
        legible para los humanos.</td>
    </tr>
  </tbody>
</table>



