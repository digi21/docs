# Line

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\).

```csharp
public class Line : ReadOnlyLine, IDesplazable, IDirectionable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)→ Line

Implementa: [IDesplazable](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| [Line\(Code\)](constructores.md#line-code) | Inicializa una nueva instancia de [Line](./)con un código. |
| [Line\(IEnumerable&lt;Code&gt;\)](constructores.md#line-ienumerable-less-than-code-greater-than) | Inicializa une nueva instancia de [Line](./)con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Points](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md). |

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
      <td style="text-align:left"><a href="../idirectionable/metodos/changedirection.md">ChangeDirection()</a>
      </td>
      <td style="text-align:left">
        <p>Cambia la direcci&#xF3;n del <a href="./">Line</a>.</p>
        <p>(Heredado de <a href="../idirectionable/">IDirectionable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/close.md">Close()</a>
      </td>
      <td style="text-align:left">Cierra el <a href="./">Line</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-point-2-d">Offset(Point2D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Line</a> en el plano X, Y.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Line</a> en el espacio.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Line</a> en el plano X, Y.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-double-double-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Line</a> en el espacio.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

