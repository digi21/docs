# GradianToSexagesimal
<!-- id: gradiantosexagesimal -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de grados centesimales a grados sexagesimales con fracción decimal. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double GradianToSexagesimal(this double gradian)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `gradian` | Ángulo en grados centesimales. |

## Devuelve

El ángulo en grados sexagesimales: `gradian * 180 / 200`, calculado a través de radianes. El resultado no se normaliza.

## Ejemplo

```csharp
Console.WriteLine(Angles.GradianToSexagesimal(100.0)); // 90
```
