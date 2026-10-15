# RelatedCommandAttribute
<!-- id: relatedcommandattribute -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Command`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Indica el nombre de una orden relacionada con la orden que implementa la clase. Una clase puede tener varios atributos `RelatedCommand`.

```csharp
[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
public class RelatedCommandAttribute : Attribute
```

En la versión 26.0.0, Digi3D.AI no lee este atributo: no cambia el registro ni la ejecución de la orden.

## Constructores

```csharp
public RelatedCommandAttribute()
```

Crea el atributo con `Name` a `null`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Name { get; set; }` | Nombre de la orden relacionada. |

## Ejemplo

El ejemplo de [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.commands/atributos/commandattribute.md#ejemplo) relaciona la orden `MIDE_DISTANCIA_2D` con `MIDE_DISTANCIA`.
