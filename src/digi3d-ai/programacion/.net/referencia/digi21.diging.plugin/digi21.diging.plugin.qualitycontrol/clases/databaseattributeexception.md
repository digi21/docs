# DatabaseAttributeException
<!-- id: databaseattributeexception -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Excepción que describe un error de control de calidad en un atributo de base de datos de uno de los códigos de la entidad.

```csharp
public class DatabaseAttributeException : Exception
```

En la versión 26.0.0, Digi3D.AI no interpreta esta excepción. Lee [Digi21.DigiNG.Plugin.QualityControl](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/README.md).

## Constructores

```csharp
public DatabaseAttributeException(string message, int codeIndex, string field)
public DatabaseAttributeException(string message, int codeIndex, string field, Exception innerException)
public DatabaseAttributeException(string message, int codeIndex, string field, Tuple<string, string>[] contextualMenuOptions)
public DatabaseAttributeException(string message, int codeIndex, string field, Exception innerException, Tuple<string, string>[] contextualMenuOptions)
```

| Parámetro | Descripción |
| :--- | :--- |
| `message` | Mensaje del error. Se devuelve en `Message`. |
| `codeIndex` | Índice del código en `Codes` de la entidad. Se devuelve en `CodeIndex`. |
| `field` | Nombre del campo de base de datos. Se devuelve en `Field`. |
| `innerException` | Excepción que ha provocado esta. Se devuelve en `InnerException`. |
| `contextualMenuOptions` | Opciones de menú contextual asociadas al error. Se devuelven en `ContextualMenuOptions`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `int CodeIndex { get; set; }` | Índice del código en `Codes` de la entidad. |
| `string Field { get; set; }` | Nombre del campo de base de datos. |
| `Tuple<string, string>[] ContextualMenuOptions { get; set; }` | Opciones de menú contextual asociadas al error, como pares de cadenas, o `null` si el constructor no las recibe. |

## Ejemplo

El ejemplo de [AnalyzeEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md#ejemplo) lanza `DatabaseAttributeException` cuando falta el atributo `COTA` en el primer código.
