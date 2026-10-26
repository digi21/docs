# LocalizableSearcherAttribute
<!-- id: localizablesearcherattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Search`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Igual que [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md), con el título leído de los recursos de la extensión.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class LocalizableSearcherAttribute : SearcherAttribute
```

Hereda de: [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md).

## Constructores

```csharp
public LocalizableSearcherAttribute(Type resourceManagerProvider, string resourceKey)
```

| Parámetro | Descripción |
| :--- | :--- |
| `resourceManagerProvider` | Tipo con una propiedad estática no pública de tipo `ResourceManager`. Las condiciones son las de [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#proveedor-de-recursos). |
| `resourceKey` | Clave del recurso con el título. La cadena del recurso se asigna a `Title`. |

El constructor lanza `ArgumentException` si `resourceManagerProvider` no tiene una propiedad estática no pública de tipo `ResourceManager` o si el recurso no contiene la clave `resourceKey`. Digi3D.AI crea el atributo al cargar la extensión; si el constructor lanza la excepción, no registra ese buscador ni los siguientes de la misma DLL.

## Ejemplo

El ejemplo de [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#ejemplo) registra el buscador `BuscadorLineasCerradas` con `[LocalizableSearcher(typeof(Recursos), "BuscarLineasCerradas")]`.
