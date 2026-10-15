# SexagesimalToRadian
<!-- id: sexagesimaltoradian -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de grados sexagesimales con fracción decimal a radianes. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double SexagesimalToRadian(this double sexagesimal)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `sexagesimal` | Ángulo en grados sexagesimales con fracción decimal (por ejemplo, 30,5 para 30° 30'). Para convertir grados, minutos y segundos, usa antes [DMSToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/dmstosexagesimal.md). |

## Devuelve

`sexagesimal * π / 180`. El resultado no se normaliza.

## Ejemplo

```csharp
Console.WriteLine(Angles.SexagesimalToRadian(180.0)); // π
```
