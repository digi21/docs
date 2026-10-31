# SearcherAttribute
<!-- id: searcherattribute -->
<!-- origen: 7a447787e9b8364b462dd24a879693e0ee5c5033 -->

Namespace: `Digi21.DigiNG.Plugin.Search`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marks a class as a search panel provider and specifies its title in the search provider list. The class must implement [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md).

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class SearcherAttribute : Attribute
```

The title identifies the search provider: two providers cannot have the same title. The [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md#registration) page explains what happens in that case.

## Constructors

```csharp
public SearcherAttribute()
```

Creates the attribute with `Title` set to `null`. Assign the title using `[Searcher(Title = "...")]`. If `Title` is `null`, Digi3D.AI does not register that search provider or subsequent providers in the same DLL.

## Properties

| Property | Description |
| :--- | :--- |
| `string Title { get; set; }` | Search provider title in the search panel's list. |

## Example

The [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md#example) example uses `[Searcher(Title = "Líneas más largas que una longitud")]`.
