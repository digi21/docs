# Point2D
<!-- id: point2d -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Punto o vector en el plano X, Y.

```csharp
public struct Point2D : IDesplazable
```

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Point2D` es un tipo de valor: una asignación copia las coordenadas, y `Offset` modifica la variable sobre la que se llama.

Los operadores `==` y `!=` comparan cada coordenada con la tolerancia [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). `Equals`, heredado de `ValueType`, compara las coordenadas sin tolerancia.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| `Point2D(double x, double y)` | Crea el punto (`x`, `y`). |
| `Point2D(double value)` | Crea el punto (`value`, `value`). |
| `Point2D(Point3D point)` | Copia la X y la Y de `point`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `double X { get; set; }` | Coordenada X. |
| `double Y { get; set; }` | Coordenada Y. |
| `double Module { get; }` | Módulo del vector: √(X² + Y²). |
| `double SquaredModule { get; }` | Cuadrado del módulo: X² + Y². |
| `Point2D Normalized { get; }` | Vector con la misma dirección y módulo 1. Si el módulo es 0, las coordenadas del resultado son `NaN`. |
| `bool IsEmpty { get; }` | `true` si X e Y valen exactamente 0, sin tolerancia. |
| `double Azimuth { get; }` | Azimut del vector en radianes, entre 0 y 2π: ángulo desde el eje Y positivo (norte), en el sentido de las agujas del reloj. El vector (0, 0) devuelve 0. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Offset(Point2D offset)`<br>`void Offset(Point3D offset)`<br>`void Offset(double x, double y)`<br>`void Offset(double x, double y, double z)` | Suma el incremento a X y a Y. Las sobrecargas con Z ignoran la Z. Lee [IDesplazable.Offset](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md). |
| `string ToString()` | Devuelve `(X,Y)`. Los números se formatean con la referencia cultural actual: con `es-ES`, el punto (1,5; 2) se escribe `(1,5,2)`. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `double DotProduct(Point2D a, Point2D b)` | Producto escalar: `a.X * b.X + a.Y * b.Y`. |
| `double CalculateModule(Point2D a, Point2D b)`<br>`double CalculateModule(Point2D a, Point3D b)`<br>`double CalculateModule(Point3D a, Point2D b)`<br>`double CalculateModule(Point3D a, Point3D b)` | Distancia entre `a` y `b` en el plano X, Y. Las coordenadas Z de los `Point3D` no intervienen. |
| `double CalculateSquaredModule(Point2D a, Point2D b)` | Cuadrado de la distancia entre `a` y `b`. |

## Operadores

| Operador | Descripción |
| :--- | :--- |
| `explicit operator Point3D(Point2D point)` | Convierte en el `Point3D` (X, Y, 0). |
| `bool operator ==(Point2D a, Point2D b)` | `true` si X e Y son iguales según `Precision.Epsilon`. |
| `bool operator !=(Point2D a, Point2D b)` | `true` si X o Y son distintas según `Precision.Epsilon`. |
| `Point2D operator +(Point2D a, Point2D b)` | Suma coordenada a coordenada. |
| `Point2D operator -(Point2D a, Point2D b)` | Resta coordenada a coordenada: el vector que va de `b` a `a`. |
| `Point2D operator *(Point2D a, double factor)` | Multiplica X e Y por `factor`. |
| `Point2D operator /(Point2D a, double factor)` | Divide X e Y entre `factor`. |

Las comparaciones entre un `Point2D` y un `Point3D` se definen en [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md).

## Ejemplo

Este programa calcula la distancia, el azimut y el producto vectorial de varios puntos, y compara puntos con tolerancia:

```csharp
using Digi21.Math;

var origen = new Point3D(1000.0, 2000.0, 50.0);
var destino = new Point3D(1003.0, 2004.0, 62.0);

// Vector de origen a destino.
var vector = destino - origen;
Console.WriteLine(vector.Module);                                  // 13
Console.WriteLine(Point2D.CalculateModule(origen, destino));       // 5: distancia en el plano X, Y
Console.WriteLine(Point3D.CalculateModule(origen, destino));       // 13: distancia en el espacio

// Azimut del vector en el plano, en grados sexagesimales.
var azimut = Angles.RadianToSexagesimal(vector.Point2D.Azimuth);
Console.WriteLine(azimut);                                         // ≈ 36.87

// Producto vectorial de los ejes X e Y: eje Z.
var z = Point3D.CrossProduct(new Point3D(1, 0, 0), new Point3D(0, 1, 0));
Console.WriteLine(z == new Point3D(0, 0, 1));                      // True

// Point2D es un tipo de valor: Offset modifica la variable.
var punto = new Point2D(10.0, 20.0);
punto.Offset(1.0, 2.0);
Console.WriteLine(punto.X);                                        // 11

// Las comparaciones con == usan Precision.Epsilon.
Precision.Epsilon = 0.001;
Console.WriteLine(new Point2D(1.0, 1.0) == new Point2D(1.0004, 1.0)); // True
Console.WriteLine(origen == new Point2D(1000.0, 2000.0));            // True: solo se comparan X e Y
```
