# Point

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Esta clase implementa una geometría de tipo punto.

```csharp
public class Point : ReadOnlyPoint, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → [ReadOnlyPoint](../readonlypoint/) → Point

Implementa: [IDesplazable](../../../digi21.math/interfaces/idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| [Point\(Code\)](constructores.md#point-code) | Inicializa una nueva instancia de [Point](./) con un código. |
| [Point\(IEnumerable&lt;Code&gt;\)](constructores.md#point-ienumerable-less-than-code-greater-than) | Inicializa une nueva instancia de [Point](./) con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Coordinate](propiedades/coordinate.md) | Devuelve o asigna las coordenadas de inserción del [Point](./). |
| [Rotation](propiedades/rotation.md) | Devuelve o asigna la rotación \(en radianes\) del [Point](./). |

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
      <td style="text-align:left"><a href="../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-point-2-d">Offset(Point2D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Point</a> en el plano X, Y.</p>
        <p>(Heredado de <a href="../../../digi21.math/interfaces/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Point</a> en el espacio.</p>
        <p>(Heredado de <a href="../../../digi21.math/interfaces/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Point</a> en el plano X, Y.</p>
        <p>(Heredado de <a href="../../../digi21.math/interfaces/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-double-double-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Point</a> en el espacio.</p>
        <p>(Heredado de <a href="../../../digi21.math/interfaces/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

