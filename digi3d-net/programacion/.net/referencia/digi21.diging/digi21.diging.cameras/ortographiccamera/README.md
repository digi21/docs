# OrtographicCamera

Espacio de nombres: [Digi21.DigiNG.Cameras](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase implementa una cámara ortográfica.

```csharp
public sealed class OrthographicCamera : Camera
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Camera](../camera/) →  OrtographicCamera

## Constructores

|  |  |
| :--- | :--- |
| [OrthographicCamera\(\)](constructores.md#orthographiccamera) | Inicializa una nueva instancia de [OrtographicCamera](./) con valores por defecto. |
| [OrthographicCamera\(IWindow3D\)](constructores.md#orthographiccamera-iwindow-3-d) | Inicializa una nueva instancia de [OrtographicCamera](./) configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)pasado por parámetros. |
| [OrthographicCamera\(string\)](constructores.md#orthographiccamera-string) | Inicializa una nueva instancia de [OrtographicCamera](./) asignándole el nombre pasado por parámetros. |
| [OrthographicCamera\(string, IWindow3D\)](constructores.md#orthographiccamera-string-iwindow-3-d) | Inicializa una nueva instancia de [OrtographicCamera](./) asignándole un nombre y configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)pasado por parámetros. |
| [OrthographicCamera\(IWindow3D, double, double, double\)](constructores.md#orthographiccamera-iwindow-3-d-double-double-double) | Inicializa una nueva instancia de [OrtographicCamera](./) configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)y con los ángulos pasados por parámetros. |
| [OrthographicCamera\(string, IWindow3D, double, double, double\)](constructores.md#orthographiccamera-string-iwindow-3-d-double-double-double) | Inicializa una nueva instancia de [OrtographicCamera](./) con nombre, configurada para visualizar el [IWindow3D ](../../digi21.math/iwindow3d/)y con los ángulos pasados por parámetros. |

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
      <td style="text-align:left"><a href="propiedades/bottom.md">Bottom</a>
      </td>
      <td style="text-align:left">Devuelve o asigna el semi ancho inferior de la c&#xE1;mara.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/far.md">Far</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna la distancia del plano lejano del cono de visi&#xF3;n.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../coniccamera/propiedades/fieldofview.md">FieldOfView</a>
      </td>
      <td style="text-align:left">Devuelve o asigna el campo de visi&#xF3;n vertical (expresado en &#xE1;ngulos
        sexagesimales).</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/left.md">Left</a>
      </td>
      <td style="text-align:left">Devuelve o asigna el semi ancho izquierdo de la c&#xE1;mara.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/near.md">Near</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna la distancia del plano cercano del cono de visi&#xF3;n.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/name.md">Name</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna el nombre de la c&#xE1;mara.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/pitch.md">Pitch</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna el &#xE1;ngulo (en sexagesimal) de rotaci&#xF3;n en
          el eje <em>Pitch</em>.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/position.md">Position</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna la posici&#xF3;n de la c&#xE1;mara.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/right.md">Right</a>
      </td>
      <td style="text-align:left">Devuelve o asigna el semi ancho derecho de la c&#xE1;mara.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/roll.md">Roll</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna el &#xE1;ngulo (en sexagesimal) de rotaci&#xF3;n en
          el eje <em>Roll</em>.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="propiedades/top.md">Top</a>
      </td>
      <td style="text-align:left">Devuelve o asigna el semi ancho superior de la c&#xE1;mara.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../camera/propiedades/yaw.md">Yaw</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve o asigna el &#xE1;ngulo (en sexagesimal) de rotaci&#xF3;n en
          el eje <em>Yaw</em>.</p>
        <p>(Heredado de <a href="../camera/">Camera</a>)</p>
      </td>
    </tr>
  </tbody>
</table>



