# GeometryType
<!-- id: geometrytype -->
<!-- origen: fe71c344c5a8492a9c6a489819d2c44503fbc32b -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Geometry type of a code in the code table. This is the value of [NodeDigiTab.Type](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/type.md).

```csharp
public enum GeometryType
```

## Values

| Value | Number in the installed assembly | Number in the NuGet package | Meaning |
| :--- | :--- | :--- | :--- |
| `Virtual` | 0 | 2 | Code for drawing geometries in the drawing window without saving them to any drawing file. |
| `Point` | 1 | 0 | Code for points. |
| `Line` | 2 | 1 | Code for lines. |

The type is advisory: a command can draw a line with a code of type `Point`. Read [Type](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) in the code table editor.

## Difference between the package and installed assembly

The reference assembly in the `Digi21.DigiNG` NuGet package declares values in a different order (`Point`, `Line`, `Virtual`) from the assembly installed by Digi3D.AI (`Virtual`, `Point`, `Line`). The C# compiler stores the package's number in the program, and Digi3D.AI interprets that number using its own order:

| In source code | Compiled number | What Digi3D.AI receives or compares |
| :--- | :--- | :--- |
| `GeometryType.Point` | 0 | `Virtual` |
| `GeometryType.Line` | 1 | `Point` |
| `GeometryType.Virtual` | 2 | `Line` |

For example, `código.Type == GeometryType.Point` is `true` for virtual codes. To make the program work with the package, do not use `GeometryType` constants:

- To read, compare the name: `código.Type.ToString() == "Point"`. `ToString` runs with the installed assembly and returns the correct name.
- To assign, convert the name: `código.Type = Enum.Parse<GeometryType>("Point")`.

## Example

The [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) example assigns the type using `Enum.Parse`, and the [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) example displays it using `ToString`.
