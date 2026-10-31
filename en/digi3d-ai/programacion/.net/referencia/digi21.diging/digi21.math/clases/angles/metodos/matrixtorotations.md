# MatrixToRotations
<!-- id: matrixtorotations -->
<!-- origen: 96a8d384b60bbca9e015fe2d933e264a222fdf69 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Calculates omega, phi and kappa rotations from a 3 × 3 rotation matrix. This is the inverse of [RotationsToMatrix](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/rotationstomatrix.md). Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void MatrixToRotations(this double[,] eulerMatrix, out double omega, out double phi, out double kappa)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `eulerMatrix` | Rotation matrix arranged as in `RotationsToMatrix`. Only elements `[0, 0]`, `[1, 0]`, `[2, 0]` and `[2, 1]` are read. |
| `omega` | Rotation around the X axis, in radians: `−asin(eulerMatrix[2, 1] / cos phi)`. |
| `phi` | Rotation around the Y axis, in radians: `asin(eulerMatrix[2, 0])`, from −π/2 to π/2. |
| `kappa` | Rotation around the Z axis, in radians: `atan2(−eulerMatrix[1, 0], eulerMatrix[0, 0])`, from −π to π. |

`omega` also lies between −π/2 and π/2, because it is calculated using `asin` and `eulerMatrix[2, 2]` is not read. If the matrix was created with an `omega` or `phi` outside [−π/2, π/2], the returned rotations do not reproduce the matrix. With `phi` equal to ±π/2, `cos phi` is 0 and `omega` is `NaN`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `eulerMatrix` is `null`. |
| `IndexOutOfRangeException` | `eulerMatrix` has fewer than 3 rows or 2 columns. |

## Example

```csharp
Angles.RotationsToMatrix(0.01, -0.02, 1.2, out var matriz);
Angles.MatrixToRotations(matriz, out var omega, out var phi, out var kappa);
// omega ≈ 0.01, phi ≈ -0.02, kappa ≈ 1.2
Console.WriteLine($"{omega} {phi} {kappa}");
```
