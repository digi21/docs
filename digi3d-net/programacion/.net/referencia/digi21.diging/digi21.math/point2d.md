# Point2D

Espacio de nombres: [Digi21.Math](./)  
Ensamblado: [Digi21.DigiNG](../)

Esta clase implementa un punto en dos dimensiones.

```csharp
public struct Point2D : IDesplazable
```

## Constructores

|  |  |
| :--- | :--- |
| Point2D\(Point3D\) | Inicializa una nueva instancia de [Point2D ](point2d.md)copiando datos de un [Point3D](point3d.md). |
| Point2D\(double\) | Inicializa una nueva instancia de [Point2D ](point2d.md)asignando a las coordenadas X e Y el valor pasado por parámetros. |
| Point2D\(double, double\) | Inicializa una nueva instancia de [Point2D](point2d.md) asignando a las coordenadas X a Y los valores pasados por parámetros. |

## Propiedades

|  |  |
| :--- | :--- |
| X | Devuelve o asigna la coordenada X del [Point2D](point2d.md). |
| Y | Devuelve o asigna la coordenada Y del [Point2D](point2d.md). |
| Module | Devuelve la distancia entre las coordenadas del [Point2D ](point2d.md)y el origen \(0,0\). |
| SquaredModule | Devuelve la distancia al cuadrado entre las coordenadas del [Point2D ](point2d.md)y el origen \(0,0\). |
| Normalized | Devuelve un nuevo [Point2D ](point2d.md)cuyo módulo es 1.0. |
| IsEmpty | Devuelve verdadero si las coordenadas X e Y son 0.0. |
| Azimuth | Devuelve el azimut del vector que va del origen \(0,0\) al [Point2D](point2d.md). |

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
      <td style="text-align:left">DotProduct(Point2D, Point2D)</td>
      <td style="text-align:left">Devuelve el producto escalar de dos <a href="point2d.md">Point2D</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">CalculateModule(Point3D, Point3D)</td>
      <td style="text-align:left">Calcula el m&#xF3;dulo en el plano entre un <a href="point3d.md">Point3D </a>y
        un <a href="point3d.md">Point3D</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">CalculateModule(Point3D, Point2D)</td>
      <td style="text-align:left">Calcula el m&#xF3;dulo en el plano entre un <a href="point3d.md">Point3D </a>y
        un <a href="point2d.md">Point2D</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">CalculateModule(Point2D, Point3D)</td>
      <td style="text-align:left">Calcula el m&#xF3;dulo en el plano entre un <a href="point2d.md">Point2D </a>y
        un <a href="point3d.md">Point3D</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">CalculateModule(Point2D, Point2D)</td>
      <td style="text-align:left">Calcula el m&#xF3;dulo en el plano entre dos <a href="point2d.md">Point2D</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left">CalculateSquaredModule(Point2D, Point2D)</td>
      <td style="text-align:left">Calcula el m&#xF3;dulo al cuadrado entre dos <a href="point2d.md">Point2D</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-point-2-d">Offset(Point2D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza la geometr&#xED;a tantas unidades en X, Y como se indique en
          el par&#xE1;metro.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-point-3-d">Offset(Point3D)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza la geometr&#xED;a tantas unidades en X, Y, Z como se indique
          en el par&#xE1;metro.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-double-double">Offset(double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza la geometr&#xED;a tantas unidades en X, Y como se indique en
          los par&#xE1;metros.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="idesplazable/metodos/offset.md#offset-double-doublem-double">Offset(double, double, double)</a>
      </td>
      <td style="text-align:left">
        <p>Desplaza la geometr&#xED;a tantas unidades en X, Y, Z como se indique
          en los par&#xE1;metros.</p>
        <p>(Heredado de <a href="idesplazable/">IDesplazable</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ToString()</td>
      <td style="text-align:left">
        <p>Devuelve una cadena con la representaci&#xF3;n del punto.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0">Object</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

## Operadores

|  |  |
| :--- | :--- |
| Point3D | Transforma el [Point2D ](point2d.md)en un [Point3D](point3d.md). |
| == | Devuelve verdadero si los dos [Point2D ](point2d.md)tienen idénticas coordenadas. |
| != | Devuelve verdadero si los dos [Point2D ](point2d.md)tienen distintas coordenadas. |
| + | Devuelve un [Point2D ](point2d.md)cuyas coordenadas son la suma de los dos [Point2D](point2d.md). |
| - | Devuelve un [Point2D ](point2d.md)cuyas coordenadas son la resta de los dos [Point2D](point2d.md). |
| \* | Devuelve un [Point2D ](point2d.md)cuyas coordenadas son las coordenadas del [Point2D ](point2d.md)a la izquierda del operador por el escalar a la derecha del operador. |
| / | Devuelve un [Point2D ](point2d.md)cuyas coordenadas son las coordenadas del [Point2D ](point2d.md)a la izquierda del operador divididas por el escalar a la derecha del operador. |
|  |  |

