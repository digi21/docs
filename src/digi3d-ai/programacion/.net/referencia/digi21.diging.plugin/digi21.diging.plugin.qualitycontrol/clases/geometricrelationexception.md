# GeometricRelationException
<!-- id: geometricrelationexception -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Excepción que describe un error de control de calidad en la relación entre la entidad analizada y otra entidad, por ejemplo un cruce entre dos líneas.

```csharp
public class GeometricRelationException : GeometryException
```

Hereda de: [GeometryException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometryexception.md), de la que recibe `Coordinates` y `ContextualMenuOptions`.

En la versión 26.0.0, Digi3D.AI no interpreta esta excepción. Lee [Digi21.DigiNG.Plugin.QualityControl](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/README.md).

## Constructores

```csharp
public GeometricRelationException(Entity entity, string message)
public GeometricRelationException(Entity entity, Point3D coordinates, string message)
public GeometricRelationException(Entity entity, string message, GeometryException innerException)
public GeometricRelationException(Entity entity, Point3D coordinates, string message, GeometryException innerException)
```

| Parámetro | Descripción |
| :--- | :--- |
| `entity` | Otra entidad de la relación. Se devuelve en `Entity`. |
| `coordinates` | Coordenadas del error. Se devuelven en `Coordinates`. |
| `message` | Mensaje del error. Se devuelve en `Message`. |
| `innerException` | Excepción que ha provocado esta. Tiene que ser una `GeometryException`. Se devuelve en `InnerException`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Entity Entity { get; set; }` | Otra entidad de la relación ([Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/README.md)). |

## Ejemplo

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.QualityControl;
using Digi21.Math;

namespace ControlCalidad;

public static class Cruces
{
    public static GeometricRelationException CreaError(Entity otraLínea, Point3D cruce) =>
        new(otraLínea, cruce, "La línea cruza otra línea del mismo código.");
}
```
