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

|  |  |
| :--- | :--- |
| DotProduct\(Point2D, Point2D\) | Devuelve el producto escalar de dos [Point2D](point2d.md). |
| CalculateModule\(Point3D, Point3D\) | Calcula el módulo en 2D entre un [Point3D ](point3d.md)y un [Point3D](point3d.md). |
| CalculateModule\(Point3D, Point2D\) | Calcula el módulo en 2D entre un [Point3D ](point3d.md)y un [Point2D](point2d.md). |
| CalculateModule\(Point2D, Point3D\) | Calcula el módulo 2D entre un [Point2D ](point2d.md)y un [Point3D](point3d.md). |
| CalculateModule\(Point2D, Point2D\) | Calcula el módulo 2D entre dos [Point2D](point2d.md). |
| CalculateSquaredModule\(Point2D, Point2D\) | Calcula el módulo al cuadrado entre dos [Point2D](point2d.md). |
| [Offset\(Point2D\)](idesplazable/metodos/offset.md#offset-point-2-d) | Desplaza la geometría tantas unidades en X, Y como se indique en el parámetro. |
| [Offset\(Point3D\)](idesplazable/metodos/offset.md#offset-point-3-d) | Desplaza la geometría tantas unidades en X, Y, Z como se indique en el parámetro. |
| [Offset\(double, double\)](idesplazable/metodos/offset.md#offset-double-double) | Desplaza la geometría tantas unidades en X, Y como se indique en los parámetros. |
| [Offset\(double, double, double\)](idesplazable/metodos/offset.md#offset-double-doublem-double) | Desplaza la geometría tantas unidades en X, Y, Z como se indique en los parámetros. |
| ToString\(\) | Devuelve una cadena con la representación del punto. |

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

