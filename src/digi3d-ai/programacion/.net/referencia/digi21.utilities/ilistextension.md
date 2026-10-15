# IListExtension
<!-- id: digi21.utilities.ilistextension -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Añade a cualquier `IList<T>` el método `AddRange`, que .NET solo define en `List<T>`.

```csharp
public static class IListExtension
```

## Métodos estáticos

### AddRange

```csharp
public static void AddRange<T>(this IList<T> list, IEnumerable<T> items)
```

Añade los elementos de `items` al final de `list`, en el orden de la enumeración. Si `list` es un `List<T>`, llama a `List<T>.AddRange`; si no, llama a `list.Add` con cada elemento.

| Parámetro | Descripción |
| :--- | :--- |
| `list` | Lista a la que se añaden los elementos. |
| `items` | Elementos que se añaden. |

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `list` o `items` es `null`. |

## Ejemplo

Este programa añade varios textos de una vez a una `Collection<string>`, que no tiene método `AddRange`:

```csharp
using System.Collections.ObjectModel;
using Digi21.Utilities;

IList<string> códigos = new Collection<string> { "020100" };
códigos.AddRange(["020200", "020300"]);

Console.WriteLine(string.Join(", ", códigos)); // 020100, 020200, 020300
```
