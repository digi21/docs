# DigitizeAsPointException
<!-- id: digitizeaspointexception -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Excepción que indica que la entidad analizada se tendría que digitalizar como punto, con el código indicado.

```csharp
public class DigitizeAsPointException : Exception
```

En la versión 26.0.0, Digi3D.AI no interpreta esta excepción. Lee [Digi21.DigiNG.Plugin.QualityControl](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/README.md).

## Constructores

```csharp
public DigitizeAsPointException(string code)
public DigitizeAsPointException(string code, string message)
public DigitizeAsPointException(string code, string message, Exception innerException)
```

| Parámetro | Descripción |
| :--- | :--- |
| `code` | Código del punto. Se devuelve en `Code`. |
| `message` | Mensaje del error. Se devuelve en `Message`. Sin este parámetro, `Message` es el mensaje por defecto de `Exception`. |
| `innerException` | Excepción que ha provocado esta. Se devuelve en `InnerException`. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Code { get; set; }` | Código con el que se tendría que digitalizar el punto. |

## Ejemplo

El ejemplo de [AnalyzeEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md#ejemplo) lanza `DigitizeAsPointException` cuando la línea es demasiado corta.
