# SearcherAttribute
<!-- id: searcherattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Search`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marca una clase como buscador del panel de búsqueda e indica el título con el que aparece en la lista de buscadores. La clase tiene que implementar [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md).

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class SearcherAttribute : Attribute
```

El título identifica al buscador: dos buscadores no pueden tener el mismo título. La página de [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md#registro) explica qué ocurre en ese caso.

## Constructores

```csharp
public SearcherAttribute()
```

Crea el atributo con `Title` a `null`. El título se asigna con la sintaxis `[Searcher(Title = "...")]`. Si `Title` es `null`, Digi3D.AI no registra ese buscador ni los siguientes de la misma DLL.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Title { get; set; }` | Título del buscador en la lista del panel de búsqueda. |

## Ejemplo

El ejemplo de [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md#ejemplo) usa `[Searcher(Title = "Líneas más largas que una longitud")]`.
