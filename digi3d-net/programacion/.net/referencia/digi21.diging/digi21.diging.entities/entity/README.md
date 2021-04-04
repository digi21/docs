# Entity

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase abstracta es la clase base común de todas las clases que implementan geometrías.

```csharp
public abstract class Entity : IWindow3D, ICloneable, IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Entity

Tipos derivados: [ReadOnlyComplex](../readonlycomplex/), [ReadOnlyLine](../readonlyline/), [ReadOnlyPoint](../readonlypoint/), [ReadOnlyPolygon](../readonlypolygon/), [ReadOnlyText](../readonlytext/).

Implementa: [ICloneable](../icloseable/), [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0), [IWindow3D](../../digi21.math/iwindow3d/)

## Observaciones

Algunas propiedades de este tipo permiten asignación como FillColor, Weigtht y Color.

Al instanciar una geometría nueva como por ejemplo [Line](../line.md), ésta es de lectura/escritura, de manera que se pueden utilizar las propiedades de asignación sin ningún problema.   
En el momento en el que la geometría se almacena en un archivo de dibujo \([IDrawingFile](../../digi21.diging.io/idrawingfile/)\), esta se convierte en una geometría de sólo lectura y ya no es posible asignar ninguna propiedad. 

En caso de asignar alguna propiedad en una geometría de solo lectura \(excepto la propiedad [Hidden](propiedades/hidden.md)\), el runtime lanzará una excepción de tipo [InvalidOperationException](https://docs.microsoft.com/en-us/dotnet/api/system.invalidoperationexception?view=net-5.0).

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
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/w.md">W</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al oeste del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/sw.md">SW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/s.md">S</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sur del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/se.md">SE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al sudeste del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/e.md">E</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al este del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/ne.md">NE</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/n.md">N</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al norte del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/nw.md">NW</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto al noreste del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/center.md">Center</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el punto en el centro del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/depth.md">Depth</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el largo del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/height.md">Height</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el alto del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/width.md">Width</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve el ancho del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/valid.md">Valid</a>
      </td>
      <td style="text-align:left">
        <p>Indica si las m&#xE1;ximas y m&#xED;nimas del <a href="./">Entity</a> son
          v&#xE1;lidas.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/xmin.md">Xmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xED;nima del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/ymin.md">Ymin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xED;nima del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/zmin.md">Zmin</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xED;nima del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/xmax.md">Xmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada X m&#xE1;xima del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/ymax.md">Ymax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Y m&#xE1;xima del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/iwindow3d/propiedades/zmax.md">Zmax</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la coordenada Z m&#xE1;xima del <a href="./">Entity</a>.</p>
        <p>(Heredado de <a href="../../digi21.math/iwindow3d/">IWindow3D</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/owner.md">Owner</a>
      </td>
      <td style="text-align:left">Devuelve el <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile </a>al
        que pertenece el <a href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/deleted.md">Deleted</a>
      </td>
      <td style="text-align:left">Especifica si el <a href="./">Entity </a>est&#xE1; eliminado.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/readonly.md">ReadOnly</a>
      </td>
      <td style="text-align:left">Especifica si el <a href="./">Entity</a> es de solo lectura (ya est&#xE1;
        almacenada en alg&#xFA;n <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile</a>)</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/fillcolor.md">FillColor</a>
      </td>
      <td style="text-align:left">Especifica el color de relleno del <a href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/weight.md">Weight</a>
      </td>
      <td style="text-align:left">Especifica el grosor del <a href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/color.md">Color</a>
      </td>
      <td style="text-align:left">Especifica el color del <a href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/codes.md">Codes</a>
      </td>
      <td style="text-align:left">Devuelve un objeto <a href>CodeCollection </a>con los c&#xF3;digos del
        <a
        href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/visible.md">Visible</a>
      </td>
      <td style="text-align:left">Indica si el <a href="./">Entity</a> es visible.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/creationtime.md">CreationTime</a>
      </td>
      <td style="text-align:left">Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.datetime?view=net-5.0">DateTime </a>con
        la fecha de creaci&#xF3;n del <a href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/offset.md">Offset</a>
      </td>
      <td style="text-align:left">Indica el <em>offset</em> en el que est&#xE1; almacenado el <a href="./">Entity</a> en
        el <a href="../../digi21.diging.io/idrawingfile/">IDrawingFile</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/database.md">Database</a>
      </td>
      <td style="text-align:left">Devuelve un objeto <a href="https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.idictionary-2?view=net-5.0">IDictionary&lt;&gt;</a> con
        los atributos de base de datos de cada c&#xF3;digo que tenga el <a href="./">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/hidden.md">Hidden</a>
      </td>
      <td style="text-align:left">Comprueba y permite indicar si ocultar la visualizaci&#xF3;n de este
        <a
        href="./">Entity</a>en la ventana de dibujo.</td>
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
      <td style="text-align:left"><a href="metodos/clone.md">Clone</a>
      </td>
      <td style="text-align:left">
        <p>Instancia una nueva <a href="./">Entity </a>id&#xE9;ntica que no est&#xE1;
          almacenada en ning&#xFA;n archivo de dibujo y que por lo tanto no es de
          solo lectura.</p>
        <p>(Heredado de <a href="../icloseable/">ICloneable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Dispose</td>
      <td style="text-align:left">
        <p>Destruye el <a href="./">Entity</a> liberando memoria inmediatamente.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0">IDisposable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ToString</td>
      <td style="text-align:left">
        <p>Convierte este <a href="./">Entity</a> en una cadena legible para los humanos.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0">Object</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>



