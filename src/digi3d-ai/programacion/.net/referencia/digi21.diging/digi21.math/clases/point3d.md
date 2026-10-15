# Point3D
<!-- id: point3d -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Punto o vector en el espacio. Es el tipo de las coordenadas de las entidades.

```csharp
public struct Point3D : IDesplazable
```

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Point3D` es un tipo de valor: una asignación copia las coordenadas, y `Offset` modifica la variable sobre la que se llama. Una propiedad que devuelve un `Point3D`, como `Point.Coordinate`, devuelve una copia: para cambiar la coordenada de la entidad, asigna el punto modificado a la propiedad.

Los operadores `==` y `!=` comparan cada coordenada con la tolerancia [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). `Equals`, heredado de `ValueType`, compara las coordenadas sin tolerancia.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| `Point3D(double x, double y, double z)` | Crea el punto (`x`, `y`, `z`). |
| `Point3D(double value)` | Crea el punto (`value`, `value`, `value`). |
| `Point3D(Point2D point)` | Crea el punto (`point.X`, `point.Y`, 0). |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `double X { get; set; }` | Coordenada X. |
| `double Y { get; set; }` | Coordenada Y. |
| `double Z { get; set; }` | Coordenada Z. |
| `Point2D Point2D { get; }` | [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) con la X y la Y. |
| `double Module { get; }` | Módulo del vector: √(X² + Y² + Z²). |
| `double SquaredModule { get; }` | Cuadrado del módulo: X² + Y² + Z². |
| `Point3D Normalized { get; }` | Vector con la misma dirección y módulo 1. Si el módulo es 0, las coordenadas del resultado son `NaN`. |
| `bool IsEmpty { get; }` | `true` si X, Y y Z valen exactamente 0, sin tolerancia. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Offset(Point2D offset)`<br>`void Offset(double x, double y)` | Suma el incremento a X y a Y. La Z no cambia. |
| `void Offset(Point3D offset)`<br>`void Offset(double x, double y, double z)` | Suma el incremento a X, Y y Z. |
| `string ToString()` | Devuelve `(X,Y,Z)`. Los números se formatean con la referencia cultural actual: con `es-ES`, el punto (1,5; 2; 3) se escribe `(1,5,2,3)`. |

Los métodos `Offset` implementan [IDesplazable.Offset](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md).

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `double DotProduct(Point3D a, Point3D b)` | Producto escalar: `a.X * b.X + a.Y * b.Y + a.Z * b.Z`. |
| `Point3D CrossProduct(Point3D a, Point3D b)` | Producto vectorial `a × b`. |
| `double CalculateModule(Point3D a, Point3D b)` | Distancia entre `a` y `b` en el espacio. |
| `double CalculateModule(Point3D a, Point2D b)`<br>`double CalculateModule(Point2D a, Point3D b)` | Distancia en el espacio entre el `Point3D` y el `Point2D`, con Z = 0 para el `Point2D`. Para la distancia en el plano X, Y, usa `Point2D.CalculateModule`. |
| `double CalculateSquaredModule(Point3D a, Point3D b)` | Cuadrado de la distancia entre `a` y `b` en el espacio. |

## Operadores

| Operador | Descripción |
| :--- | :--- |
| `explicit operator Point2D(Point3D point)` | Convierte en el `Point2D` (X, Y). |
| `bool operator ==(Point3D a, Point3D b)` | `true` si X, Y y Z son iguales según `Precision.Epsilon`. |
| `bool operator !=(Point3D a, Point3D b)` | `true` si X, Y o Z son distintas según `Precision.Epsilon`. |
| `bool operator ==(Point3D a, Point2D b)`<br>`bool operator ==(Point2D a, Point3D b)` | `true` si X e Y son iguales según `Precision.Epsilon`. La Z no se compara. |
| `bool operator !=(Point3D a, Point2D b)`<br>`bool operator !=(Point2D a, Point3D b)` | `true` si X o Y son distintas según `Precision.Epsilon`. La Z no se compara. |
| `Point3D operator +(Point3D a, Point3D b)` | Suma coordenada a coordenada. |
| `Point3D operator -(Point3D a, Point3D b)` | Resta coordenada a coordenada: el vector que va de `b` a `a`. |
| `Point3D operator *(Point3D a, double factor)` | Multiplica X, Y y Z por `factor`. |
| `Point3D operator /(Point3D a, double factor)` | Divide X, Y y Z entre `factor`. |

## Ejemplo

El ejemplo de [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) calcula distancias, azimutes y productos vectoriales con `Point3D`, y compara un `Point3D` con un `Point2D`.
