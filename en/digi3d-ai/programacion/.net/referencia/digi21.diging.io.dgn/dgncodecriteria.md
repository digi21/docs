# DgnCodeCriteria
<!-- id: digi21.diging.io.dgn.dgncodecriteria -->
<!-- origen: 31d434ccf808c6949d99ac795bcab335de5cb0c6 -->

Namespace: `Digi21.DigiNG.IO.Dgn`  
Assembly: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Criterion used to find each DGN element's Digi3D.AI code in the code table: which element attributes must match the code's DGN translation. This is the type of the `CodeCriteria` property of [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md).

```csharp
public enum DgnCodeCriteria
```

The [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md) constructor applies the value of `DgnParameters.CodeCriteria`. For a value not in this enumeration, the constructor throws `ArgumentOutOfRangeException`.

## Values

| Value | Number | Attributes compared |
| :--- | :--- | :--- |
| `Level` | 0 | Level name. |
| `LevelCell` | 1 | If the element is a cell, a matching cell name is sufficient (case-insensitive). If it does not match, or the element is not a cell, the level name is compared. |
| `LevelColorStyleWeight` | 2 | Level name, color, style and weight. |
| `LevelColorStyleWeightCell` | 3 | Like `LevelCell`, but if there is no cell match, the level name, color, style and weight are compared. |
| `LevelColor` | 4 | Level name and color. |
| `LevelStyle` | 5 | Level name and style. |
| `LevelWeight` | 6 | Level name and weight. |
| `GraphicsGroup` | 7 | Graphic group. |

The numbers match positions 0 through 7 of the **Code criteria** list in the [DGNv8 files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) importer/exporter. Criteria in positions 8 through 18 of that list (Geographics, NGix, level number...) have no value in this enumeration and cannot be used by a `Dgn`.

## Example

```csharp
using Digi21.DigiNG.IO.Dgn;

var parámetros = new DgnParameters { CodeCriteria = DgnCodeCriteria.LevelColor };
Console.WriteLine($"{parámetros.CodeCriteria} = {(int)parámetros.CodeCriteria}"); // LevelColor = 4
```
