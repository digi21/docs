# Text

Espacio de nombres: [Digi21.DigiNG.Entities](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una geometría de tipo texto de Digi3D.NET.

```csharp
public class Text : ReadOnlyText, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → [ReadOnlyText](../readonlytext/) → Text

Implementa: [IDesplazable](../../digi21.math/idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| [Text\(Code code\)](constructores.md#text-code) | Inicializa una nueva instancia de [Text](./) con un código. |
| [Text\(IEnumerable&lt;Code&gt;\)](constructores.md#text-ienumerable-less-than-code-greater-than) | Inicializa una nueva instancia de [Text](./) con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Coordinate](propiedades/coordinate.md) | Devuelve o asigna las coordenadas de inserción del [Text](./). |
| [Justification](propiedades/justification.md) | Devuelve o asigna la justificación de textos del [Text](./). |
| [Rotation](propiedades/rotation.md) | Devuelve o asigna o asigna la rotación en radianes del [Text](./). |
| [TextHeight](propiedades/textheight.md) | Devuelve o asigna la altura de textos del [Text](./). |
| [Txt](propiedades/txt.md) | Devuelve o asigna el texto del [Text](./). |

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
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-point-2-d">Offset(Point2D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Text</a> en el plano X, Y.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Text</a> en el espacio.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Text</a> en el plano X, Y.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../digi21.math/idesplazable/metodos/offset.md#offset-double-double-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza el <a href="./">Text</a> en el espacio.</p>
        <p>(Heredado de <a href="../../digi21.math/idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

