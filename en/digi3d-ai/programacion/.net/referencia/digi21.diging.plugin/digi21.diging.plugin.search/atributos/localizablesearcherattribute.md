# LocalizableSearcherAttribute
<!-- id: localizablesearcherattribute -->
<!-- origen: 03f3d869eb24e8e7bdf9dfefcf5dc7fd084454d5 -->

Namespace: `Digi21.DigiNG.Plugin.Search`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Like [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md), with the title read from the extension's resources.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class LocalizableSearcherAttribute : SearcherAttribute
```

Inherits from: [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md).

## Constructors

```csharp
public LocalizableSearcherAttribute(Type resourceManagerProvider, string resourceKey)
```

| Parameter | Description |
| :--- | :--- |
| `resourceManagerProvider` | Type with a non-public static property of type `ResourceManager`. The requirements are those of [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#resource-provider). |
| `resourceKey` | Resource key containing the title. The resource string is assigned to `Title`. |

The constructor throws `ArgumentException` if `resourceManagerProvider` has no non-public static property of type `ResourceManager` or the resource does not contain the `resourceKey` key. Digi3D.AI creates the attribute when loading the extension; if the constructor throws the exception, it does not register that search provider or subsequent providers in the same DLL.

## Example

The [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#example) example registers the `BuscadorLineasCerradas` search provider through `[LocalizableSearcher(typeof(Recursos), "BuscarLineasCerradas")]`.
