# UtilidadesSecuenciaPoint2D
<!-- id: digi21.utilities.utilidadessecuenciapoint2d -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Método de extensión de `IEnumerable<Point2D>`.

```csharp
public static class UtilidadesSecuenciaPoint2D
```

## Métodos estáticos

### ContieneElPunto

```csharp
public static bool ContieneElPunto(this IEnumerable<Point2D> secuencia, Point2D punto)
```

Devuelve `true` si algún elemento de `secuencia` es igual a `punto` según el operador `==` de [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md), que compara X e Y con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). `Enumerable.Contains` de LINQ, en cambio, compara con `EqualityComparer<Point2D>.Default` y no con el operador `==`.

Lanza `ArgumentNullException` si `secuencia` es `null`.

## Ejemplo

Este programa comprueba si un punto está entre los vértices de una lista:

```csharp
using Digi21.Math;
using Digi21.Utilities;

Point2D[] vértices = [new Point2D(0, 0), new Point2D(10, 0), new Point2D(10, 10)];

Console.WriteLine(vértices.ContieneElPunto(new Point2D(10, 0)));  // True
Console.WriteLine(vértices.ContieneElPunto(new Point2D(5, 5)));   // False
```
