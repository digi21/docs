# HasCode
<!-- id: hascode -->
<!-- origen: f95889807bac43c4a74a4cab9179e10fe51dcb55 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the code table has a code whose name or one of whose aliases matches the specified name.

```csharp
public bool HasCode(string name)
public bool HasCode(string name, bool allowWildcards)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `name` | Name to find. The first 255 characters are used. |
| `allowWildcards` | `true` to compare using wildcards. `HasCode(name)` is equivalent to `HasCode(name, false)`. |

## Returns

`true` if any code in the table matches `name` in its name or one of its aliases.

## Comparison

With `allowWildcards` set to `false`, the name or alias must equal `name`, case-sensitively. `*` and `?` are compared as characters. This is the same comparison used by the [this[string]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) indexer.

With `allowWildcards` set to `true`, the two strings are compared character by character, case-sensitively, using these rules:

| Character | Effect |
| :--- | :--- |
| `*` | Matches the remainder of the other string, including an empty remainder. |
| `?` | Matches any one character. Does not match the end of the other string. |

Wildcards apply in both strings: in `name` and in the table's names and aliases. For example, `HasCode("0204*", true)` is `true` if the table has a code `020401`, and `HasCode("020401", true)` is `true` if the table has a code `0204*`.

## Example

```csharp
using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");

if (tabla.HasCode("020400"))
    Console.WriteLine("La tabla tiene el código 020400.");

if (tabla.HasCode("0204*", true))
    Console.WriteLine("La tabla tiene al menos un código que empieza por 0204.");
```
