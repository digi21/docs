# Item[string]
<!-- id: digi21.diging.digitab.digitab.item -->
<!-- origen: 4ec40b97123134b8b8ee301bd20d8d52952b277e -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Table code with the specified name or alias.

```csharp
public NodeDigiTab this[string name] { get; }
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `name` | Code name or alias. The first 255 characters are used. |

## Property value

[NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) of the first code, in table order, whose name or one of whose aliases equals `name`. The comparison is case-sensitive and does not support wildcards: `*` and `?` are compared as characters. The `NodeDigiTab` is not a copy: assigning one of its properties changes the code in the table.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentOutOfRangeException` | No code has that name or alias. To check whether the code exists before accessing the indexer, use [HasCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md). |

## Example

```csharp
using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");

if (tabla.HasCode("020100"))
    Console.WriteLine(tabla["020100"].Description);
```
