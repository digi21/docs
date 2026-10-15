# GradianToRadian
<!-- id: gradiantoradian -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un ángulo de grados centesimales a radianes. Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double GradianToRadian(this double gradian)
```

El ensamblado instalado con Digi3D.AI declara el método sin `this`: llámalo como `Angles.GradianToRadian(valor)`.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `gradian` | Ángulo en grados centesimales. |

## Devuelve

`gradian * π / 200`. El resultado no se normaliza.

## Ejemplo

```csharp
Console.WriteLine(Angles.GradianToRadian(100.0)); // π/2
```
