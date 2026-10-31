# DigiTab
<!-- id: digitab -->
<!-- origen: 20d595cb6776b65d0dac329b56c50316159ce989 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

In-memory code table.

```csharp
public sealed class DigiTab : IDisposable
```

Implements: `IDisposable`.

The class has no public constructors. A `DigiTab` is obtained in two ways:

| Source | Modifiable |
| :--- | :--- |
| [DigiTab.Load](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md), which loads a code table file. | Yes. |
| The [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) class's static `DigiTab` property, which returns the active drawing window's code table. | No. |

In a nonmodifiable code table, `AddCode` and assignments to its [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) properties throw `InvalidOperationException`.

Changes are made in memory. To save them, call [Write](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md).

`Dispose` releases the native code table. After `Dispose`, the instance cannot be used: its members do not check whether the instance has been released and do not throw `ObjectDisposedException`.

## Properties

| Property | Description |
| :--- | :--- |
| [string Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/path.md) | Path of the file from which the code table was loaded. |
| [IEnumerable&lt;NodeDigiTab&gt; Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/codes.md) | Codes in the table. |
| [NodeDigiTab this[string name]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) | Code with the specified name or alias. Throws `ArgumentOutOfRangeException` if it does not exist. |
| [IDictionary&lt;string, IList&lt;Tuple&lt;string, Type&gt;&gt;&gt; Tables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/tables.md) | Database tables defined by the code table, with their fields. |

## Static methods

| Method | Description |
| :--- | :--- |
| [DigiTab Load(string path)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md) | Loads a code table from a file. |

## Methods

| Method | Description |
| :--- | :--- |
| [bool HasCode(string name)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md) | Indicates whether the table has a code or alias with that exact name. |
| [bool HasCode(string name, bool allowWildcards)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md) | Indicates whether the table has a code or alias with the specified name, with `*` and `?` wildcards if `allowWildcards` is `true`. |
| [void AddCode(NodeDigiTab code)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/addcode.md) | Adds a code to the table. |
| [void Write(string path)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md) | Saves the code table to a file. Throws `InvalidOperationException` if the table is encrypted and `IOException` if it cannot be written. |
| `void Dispose()` | Releases the native code table. |

## Example

This program displays each code's name, geometry type and description, the database tables with their fields, and whether any code starts with `0204`:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ListaCodigos <tabla.tab.xml>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);

foreach (var código in tabla.Codes)
{
    // Type.ToString() returns the value name from the installed assembly.
    Console.WriteLine($"{código.Name}\t{código.Type.ToString()}\t{código.Description}");
}

foreach (var (nombreTabla, campos) in tabla.Tables)
    Console.WriteLine($"{nombreTabla}: {string.Join(", ", campos.Select(c => $"{c.Item1} ({c.Item2?.Name})"))}");

Console.WriteLine(tabla.HasCode("0204*", true)
    ? "Hay códigos que empiezan por 0204."
    : "Ningún código empieza por 0204.");
return 0;
```

The reason for using `Type.ToString()` is explained in [GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md).
