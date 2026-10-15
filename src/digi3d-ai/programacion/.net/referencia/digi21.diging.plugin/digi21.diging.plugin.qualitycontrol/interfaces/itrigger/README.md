# ITrigger
<!-- id: itrigger -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Control de calidad de una entidad: analiza la entidad y la devuelve, devuelve otra entidad que la sustituye o lanza una excepción que describe el error.

```csharp
public interface ITrigger
```

En la versión 26.0.0, Digi3D.AI no llama a ninguna implementación de esta interfaz. Los guiones de control de calidad de la tabla de códigos se escriben en Python: lee [Controles de calidad en Python](/digi3d-ai/programacion/python/controles-de-calidad/README.md).

## Métodos

| Método | Descripción |
| :--- | :--- |
| [`Entity AnalyzeEntity(Entity entity, bool addingEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md) | Analiza `entity` y devuelve la entidad que se almacenaría. `addingEntity` indica si la entidad se está almacenando o si se analiza una entidad existente. |

## Ejemplo

El ejemplo está en [AnalyzeEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md#ejemplo).
