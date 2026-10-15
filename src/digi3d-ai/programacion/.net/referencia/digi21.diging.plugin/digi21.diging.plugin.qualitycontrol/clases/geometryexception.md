# GeometryException
<!-- id: geometryexception -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Excepción que describe un error de control de calidad en la geometría de una entidad, con las coordenadas opcionales del error.

```csharp
public class GeometryException : Exception
```

Clases derivadas: [GeometricRelationException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometricrelationexception.md).

En la versión 26.0.0, Digi3D.AI no interpreta esta excepción. Lee [Digi21.DigiNG.Plugin.QualityControl](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/README.md).

## Constructores

```csharp
public GeometryException(string message)
public GeometryException(string message, Point3D coordinates)
public GeometryException(string message, Exception innerException)
public GeometryException(string message, Point3D coordinates, Exception innerException)
```

| Parámetro | Descripción |
| :--- | :--- |
| `message` | Mensaje del error. Se devuelve en `Message`. |
| `coordinates` | Coordenadas del error. Se devuelven en `Coordinates`. |
| `innerException` | Excepción que ha provocado esta. Se devuelve en `InnerException`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Point3D? Coordinates { get; set; }` | Coordenadas del error, o `null` si la excepción se creó con un constructor sin `coordinates`. |
| `Tuple<string, string>[] ContextualMenuOptions { get; set; }` | Opciones de menú contextual asociadas al error, como pares de cadenas. Ningún constructor la asigna: vale `null` hasta que se asigna. |

## Ejemplo

El ejemplo de [AnalyzeEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md#ejemplo) lanza `GeometryException` con y sin coordenadas.
