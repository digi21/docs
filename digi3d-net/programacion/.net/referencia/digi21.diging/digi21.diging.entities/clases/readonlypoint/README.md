# ReadOnlyPoint

Espacio de nombres: [Digi21.DigiNG.Entities](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Esta clase implementa una geometría de tipo punto de solo lectura.

```csharp
public class ReadOnlyPoint : Entity, ISnapable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](../entity/) → ReadOnlyPoint

Tipos derivados: [Point](../point/)

Implementa: [ISnapable](../../interfaces/isnapable/)

## Propiedades

|  |  |
| :--- | :--- |
| [Coordinate](propiedades/coordinate.md) | Devuelve las coordenadas de inserción del [ReadOnlyPoint](./). |
| [Rotation](propiedades/rotation.md) | Devuelve el ángulo de rotación \(en radianes\) del [ReadOnlyPoint](./). |

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
      <td style="text-align:left">Devuelve una nueva instancia de <a href="../point/">Point</a> id&#xE9;ntica
        a la actual pero que no est&#xE1; asignada a ning&#xFA;n <a href="../../../digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a> de
        manera que no es de solo lectura.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/isnapable/metodos/distance.md">Distance(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un vector cuyo m&#xF3;dulo es la distancia al punto m&#xE1;s
          cercano a la geometr&#xED;a.</p>
        <p>(Heredado de <a href="../../interfaces/isnapable/">ISnapable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/isnapable/metodos/nearestsegment.md">NearestSegment(Point3D, out Point3D, out int)</a>
      </td>
      <td style="text-align:left">
        <p>Indica el segmento m&#xE1;s cercano y calcula la proyecci&#xF3;n a dicho
          segmento adem&#xE1;s de devolver la distancia a dicho punto.</p>
        <p>(Heredado de <a href="../../interfaces/isnapable/">ISnapable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../interfaces/isnapable/metodos/nearestvertex.md">NearestVertex(Point3D, out Point3D, out int)</a>
      </td>
      <td style="text-align:left">
        <p>Indica el v&#xE9;rtice m&#xE1;s cercano as&#xED; como su &#xED;ndice y
          distancia.</p>
        <p>(Heredado de <a href="../../interfaces/isnapable/">ISnapable</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

