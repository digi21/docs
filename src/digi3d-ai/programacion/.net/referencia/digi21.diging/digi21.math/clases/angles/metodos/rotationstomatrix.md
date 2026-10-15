# RotationsToMatrix
<!-- id: rotationstomatrix -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Calcula la matriz de giro de 3 × 3 de los giros omega (eje X), phi (eje Y) y kappa (eje Z). Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void RotationsToMatrix(double omega, double phi, double kappa, out double[,] eulerMatrix)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `omega` | Giro alrededor del eje X, en radianes. |
| `phi` | Giro alrededor del eje Y, en radianes. |
| `kappa` | Giro alrededor del eje Z, en radianes. |
| `eulerMatrix` | Matriz nueva de 3 × 3 con los elementos siguientes (ω = `omega`, φ = `phi`, κ = `kappa`). |

| | Columna 0 | Columna 1 | Columna 2 |
| :--- | :--- | :--- | :--- |
| Fila 0 | cos φ · cos κ | cos ω · sin κ + sin ω · sin φ · cos κ | sin ω · sin κ − cos ω · sin φ · cos κ |
| Fila 1 | −cos φ · sin κ | cos ω · cos κ − sin ω · sin φ · sin κ | sin ω · cos κ + cos ω · sin φ · sin κ |
| Fila 2 | sin φ | −sin ω · cos φ | cos ω · cos φ |

El índice `eulerMatrix[fila, columna]` sigue la tabla. [MatrixToRotations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/matrixtorotations.md) hace la operación inversa.

## Ejemplo

```csharp
Angles.RotationsToMatrix(0.0, 0.0, Math.PI / 2, out var matriz);
// matriz[0, 0] ≈ 0, matriz[0, 1] = 1, matriz[1, 0] = -1
Console.WriteLine($"{matriz[0, 0]} {matriz[0, 1]} {matriz[1, 0]}");
```
