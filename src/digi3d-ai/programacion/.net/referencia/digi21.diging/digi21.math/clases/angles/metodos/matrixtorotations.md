# MatrixToRotations
<!-- id: matrixtorotations -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Calcula los giros omega, phi y kappa de una matriz de giro de 3 × 3. Es la operación inversa de [RotationsToMatrix](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/rotationstomatrix.md). Método de [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void MatrixToRotations(this double[,] eulerMatrix, out double omega, out double phi, out double kappa)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `eulerMatrix` | Matriz de giro con la disposición de `RotationsToMatrix`. Solo se leen los elementos `[0, 0]`, `[1, 0]`, `[2, 0]` y `[2, 1]`. |
| `omega` | Giro alrededor del eje X, en radianes: `−asin(eulerMatrix[2, 1] / cos phi)`. |
| `phi` | Giro alrededor del eje Y, en radianes: `asin(eulerMatrix[2, 0])`, entre −π/2 y π/2. |
| `kappa` | Giro alrededor del eje Z, en radianes: `atan2(−eulerMatrix[1, 0], eulerMatrix[0, 0])`, entre −π y π. |

`omega` también queda entre −π/2 y π/2, porque se calcula con `asin` y no se lee `eulerMatrix[2, 2]`. Si la matriz se creó con un `omega` o un `phi` fuera del intervalo [−π/2, π/2], los giros devueltos no reproducen la matriz. Con `phi` igual a ±π/2, `cos phi` vale 0 y `omega` es `NaN`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `eulerMatrix` es `null`. |
| `IndexOutOfRangeException` | `eulerMatrix` tiene menos de 3 filas o de 2 columnas. |

## Ejemplo

```csharp
Angles.RotationsToMatrix(0.01, -0.02, 1.2, out var matriz);
Angles.MatrixToRotations(matriz, out var omega, out var phi, out var kappa);
// omega ≈ 0.01, phi ≈ -0.02, kappa ≈ 1.2
Console.WriteLine($"{omega} {phi} {kappa}");
```
