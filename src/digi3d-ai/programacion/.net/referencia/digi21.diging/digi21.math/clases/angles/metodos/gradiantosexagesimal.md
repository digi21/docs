# GradianToSexagesimal
<!-- id: gradiantosexagesimal -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de grados centesimales a grados sexagesimales con fracción decimal. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double GradianToSexagesimal(this double radian)
```

El ensamblado instalado con Digi3D.AI declara el método sin `this`: llámalo como `Angles.GradianToSexagesimal(valor)`. El parámetro se llama `radian`, pero el valor se interpreta en grados centesimales.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `radian` | Ángulo en grados centesimales. |

## Devuelve

El ángulo en grados sexagesimales: `radian * 180 / 200`, calculado a través de radianes. El resultado no se normaliza.

## Ejemplo

```csharp
Console.WriteLine(Angles.GradianToSexagesimal(100.0)); // 90
```
