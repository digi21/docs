# Line

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\).

```csharp
public class Line : ReadOnlyLine, IDesplazable, IDirectionable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → [ReadOnlyLine ](../readonlyline/)→ Line

Implementa: [IDesplazable](../../digi21.math/idesplazable/), [IDirectionable](../idirectionable/)

## Constructores

|  |  |
| :--- | :--- |
| [Line\(Code\)](constructores.md#line-code) | Inicializa una nueva instancia de Line con un código. |
| [Line\(IEnumerable\)](constructores.md#line-ienumerable) | Inicializa une nueva instancia de Line con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Points](propiedades/points.md) | Devuelve la lista de vértices del [Line](./). |

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
      <td style="text-align:left"><a href="metodos/offset.md#offset-point-2-d">Offset(Point2D)</a>
      </td>
      <td style="text-align:left">Desplaza el <a href="./">Line</a> en el plano X, Y.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">Desplaza el <a href="./">Line</a> en el espacio.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">Desplaza el <a href="./">Line</a> en el plano X, Y.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/offset.md#offset-double-double-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">Desplaza el <a href="./">Line</a> en el espacio.</td>
    </tr>
  </tbody>
</table>

