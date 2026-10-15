# SexagesimalToGradian
<!-- id: sexagesimaltogradian -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de grados sexagesimales con fracción decimal a grados centesimales. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double SexagesimalToGradian(this double sexagesimal)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `sexagesimal` | Ángulo en grados sexagesimales con fracción decimal. |

## Devuelve

El ángulo en grados centesimales: `sexagesimal * 200 / 180`, calculado a través de radianes. El resultado no se normaliza.

## Ejemplo

```csharp
Console.WriteLine(Angles.SexagesimalToGradian(90.0)); // 100
```
