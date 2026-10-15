# Precision
<!-- id: precision -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tolerancia (épsilon) por debajo de la cual dos valores `double` se consideran iguales, y métodos de extensión de `double` que comparan con esa tolerancia.

```csharp
public static class Precision
```

`Epsilon` es un valor único para todo el proceso: es la misma tolerancia que usa Digi3D.AI en sus cálculos geométricos y la que usan los operadores `==` y `!=` de [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) y de [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md). Digi3D.AI asigna a `Epsilon` el valor del parámetro `Sigma` de la configuración (0,001 por defecto) cada vez que abre o crea un archivo de dibujo. Una extensión que asigna `Epsilon` cambia las comparaciones de todo el programa.

Fuera de Digi3D.AI, `Epsilon` vale 0,001 hasta que se le asigna otro valor.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `static double Epsilon { get; set; }` | Tolerancia de las comparaciones. Con valor 0, las comparaciones son exactas. |

## Métodos de extensión

| Método | Descripción |
| :--- | :--- |
| `bool IsEqual(this double valueA, double valueB)` | `true` si \|`valueA` − `valueB`\| < `Epsilon`. Con `Epsilon` igual a 0, `true` si los dos valores son iguales. |
| `bool IsDistinct(this double valueA, double valueB)` | Negación de `IsEqual`. |
| `bool IsGreater(this double valueA, double valueB)` | `true` si `IsEqual` es `false` y `valueA` > `valueB`. |
| `bool IsGreaterOrEqual(this double valueA, double valueB)` | `true` si `IsEqual` es `true` o `valueA` > `valueB`. |
| `bool IsLower(this double valueA, double valueB)` | `true` si `IsEqual` es `false` y `valueA` < `valueB`. |
| `bool IsLowerOrEqual(this double valueA, double valueB)` | `true` si `IsEqual` es `true` o `valueA` < `valueB`. |

Los métodos se pueden llamar como métodos de extensión (`a.IsEqual(b)`) o como métodos estáticos (`Precision.IsEqual(a, b)`).

## Ejemplo

```csharp
using Digi21.Math;

var a = 123.000;
var b = 123.0004;

Precision.Epsilon = 0.001;
Console.WriteLine(a.IsEqual(b));          // True: |a - b| < 0.001
Console.WriteLine(a.IsLower(b));          // False: a y b se consideran iguales
Console.WriteLine(a.IsLowerOrEqual(b));   // True

Precision.Epsilon = 0.0001;
Console.WriteLine(Precision.IsEqual(a, b)); // False
Console.WriteLine(a.IsLower(b));            // True

// Con épsilon 0 la comparación es exacta.
Precision.Epsilon = 0.0;
Console.WriteLine(a.IsDistinct(b));         // True
```
