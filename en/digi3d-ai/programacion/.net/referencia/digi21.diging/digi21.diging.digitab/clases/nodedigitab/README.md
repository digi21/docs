# NodeDigiTab
<!-- id: nodedigitab -->
<!-- origen: f515a0eabfafb291c35a14d86b11347fa311a35a -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code in a [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) code table.

```csharp
public sealed class NodeDigiTab : IDisposable
```

Implements: `IDisposable`. The NuGet package's reference assembly declares `public sealed class NodeDigiTab`, without `IDisposable`: code compiled with the package cannot use `using` with a `NodeDigiTab` or call `Dispose`, and native code is released when the garbage collector finalizes the object.

A `NodeDigiTab` is obtained in two ways:

- Through [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/codes.md) or the [this[string]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) indexer of a `DigiTab`. The object is not a copy: assigning a property changes the code in the code table, in memory. If the code table is not modifiable, the assignment throws `InvalidOperationException`.
- Through the [constructor](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/constructores.md), to add it later to a table using [AddCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/addcode.md). After `AddCode`, that object is read-only.

Assignments to a read-only object's properties throw `InvalidOperationException`.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [NodeDigiTab(string name)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/constructores.md) | Creates a line code with the specified name. |

## Properties

| Property | Description |
| :--- | :--- |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/name.md) | Code name. Read-only. |
| [string Description](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/description.md) | Code description. |
| [GeometryType Type](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/type.md) | Geometry type: point, line or virtual. |
| [int Priority](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/priority.md) | Code priority. |
| [string Color](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/color.md) | Color in the drawing window. |
| [string ColorPhotogrammetric](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/colorphotogrammetric.md) | Color in the photogrammetric window. |
| [IEnumerable&lt;string&gt; Tags](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/tags.md) | Code tags. |
| [IEnumerable&lt;string&gt; Alias](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/alias.md) | Code aliases. |
| [string Table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/table.md) | Database table linked to the code. |
| [Dictionary&lt;string, string&gt; Values](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/values.md) | Code values. Read-only. |

## Methods

| Method | Description |
| :--- | :--- |
| `void Dispose()` | Releases native code. After `Dispose`, the object cannot be used. Not present in the NuGet package's reference assembly. |

## Example

This program adds the point code `PUNTO_CONTROL` to a code table and saves it to another file:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 2)
{
    Console.WriteLine("Uso: AnadeCodigo <entrada.tab.xml> <salida.tab.xml>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);

if (tabla.HasCode("PUNTO_CONTROL"))
{
    Console.WriteLine("La tabla ya tiene el código PUNTO_CONTROL.");
    return 1;
}

var código = new NodeDigiTab("PUNTO_CONTROL")
{
    Description = "Punto de control",
    Color = "#FF0000FF",
    ColorPhotogrammetric = "#FFFF00FF",
    Priority = 10,
    Tags = ["control", "topografía"],
    // Enum.Parse obtains the number from the installed assembly; read the GeometryType page.
    Type = Enum.Parse<GeometryType>("Point"),
};

// After AddCode, the properties of 'código' are read-only.
tabla.AddCode(código);
tabla.Write(args[1]);

Console.WriteLine($"{tabla.Codes.Count()} códigos escritos en {args[1]}.");
return 0;
```
