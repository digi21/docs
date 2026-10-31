# RotationsToMatrix
<!-- id: rotationstomatrix -->
<!-- origen: dede40de9255423e763a118b0940708095f820c1 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Calculates the 3 × 3 rotation matrix for omega (X axis), phi (Y axis) and kappa (Z axis) rotations. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void RotationsToMatrix(double omega, double phi, double kappa, out double[,] eulerMatrix)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `omega` | Rotation around the X axis, in radians. |
| `phi` | Rotation around the Y axis, in radians. |
| `kappa` | Rotation around the Z axis, in radians. |
| `eulerMatrix` | New 3 × 3 matrix with the following elements (ω = `omega`, φ = `phi`, κ = `kappa`). |

| | Column 0 | Column 1 | Column 2 |
| :--- | :--- | :--- | :--- |
| Row 0 | cos φ · cos κ | cos ω · sin κ + sin ω · sin φ · cos κ | sin ω · sin κ − cos ω · sin φ · cos κ |
| Row 1 | −cos φ · sin κ | cos ω · cos κ − sin ω · sin φ · sin κ | sin ω · cos κ + cos ω · sin φ · sin κ |
| Row 2 | sin φ | −sin ω · cos φ | cos ω · cos φ |

The indices of `eulerMatrix[fila, columna]` correspond to the table's row and column. [MatrixToRotations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/matrixtorotations.md) calculates rotation angles from the rotation matrix.

## Example

```csharp
Angles.RotationsToMatrix(0.0, 0.0, Math.PI / 2, out var matriz);
// matriz[0, 0] ≈ 0, matriz[0, 1] = 1, matriz[1, 0] = -1
Console.WriteLine($"{matriz[0, 0]} {matriz[0, 1]} {matriz[1, 0]}");
```
