# IListExtension
<!-- id: digi21.utilities.ilistextension -->
<!-- origen: cb4bb01fc5d3c7c6c3ef90b025fc0d55d4baa88e -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Adds `AddRange` to any `IList<T>`; .NET only defines this method on `List<T>`.

```csharp
public static class IListExtension
```

## Static methods

### AddRange

```csharp
public static void AddRange<T>(this IList<T> list, IEnumerable<T> items)
```

Appends elements from `items` to `list`, in enumeration order. If `list` is a `List<T>`, calls `List<T>.AddRange`; otherwise, calls `list.Add` for each element.

| Parameter | Description |
| :--- | :--- |
| `list` | List to which elements are added. |
| `items` | Elements to add. |

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `list` or `items` is `null`. |

## Example

This program adds several strings at once to a `Collection<string>`, which has no `AddRange` method:

```csharp
using System.Collections.ObjectModel;
using Digi21.Utilities;

IList<string> códigos = new Collection<string> { "020100" };
códigos.AddRange(["020200", "020300"]);

Console.WriteLine(string.Join(", ", códigos)); // 020100, 020200, 020300
```
