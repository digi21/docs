# Compare
<!-- id: compare -->
<!-- origen: 2f65e3c8655432d4bd42eea160f426325c037c9d -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Compares two code names using Digi3D.AI wildcards.

```csharp
public static bool Compare(string codeNameA, string codeNameB)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `codeNameA` | First name. Supports wildcards. |
| `codeNameB` | Second name. Supports wildcards. |

## Return value

Returns `true` if both names match. The method traverses names character by character from the start:

- If either name has `*` at the current position, returns `true` without comparing remaining characters.
- If one name ends before the other, returns `false`.
- `?` in either name matches any character.
- Other characters are compared without changing case.

Two empty names are equal.

| `codeNameA` | `codeNameB` | Result |
| :--- | :--- | :--- |
| `020400` | `02*` | `true` |
| `020400` | `02??00` | `true` |
| `020400` | `0204` | `false` |
| `02*` | `020400` | `true` |

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `codeNameA` or `codeNameB` is `null`. |

## Example

```csharp
foreach (var código in entidad.Codes)
{
    if (Code.Compare(código.Name, "02*"))
        Console.WriteLine($"{código.Name} pertenece al grupo de altimetría");
}
```

Code collections use the same comparison in [CodeCollection.IndexOf](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/codecollection/).
