# Digi21.DigiNG.Plugin.QualityControl
<!-- id: digi21.diging.plugin.qualitycontrol -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Interfaz de un control de calidad de entidades y excepciones que describen los errores de control de calidad.

En la versión 26.0.0, Digi3D.AI no usa estos tipos: no llama a ninguna implementación de [ITrigger](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/README.md) y no interpreta estas excepciones. Los guiones de control de calidad de la tabla de códigos se escriben en Python: lee [Controles de calidad en Python](/digi3d-ai/programacion/python/controles-de-calidad/README.md).

## Clases

| Clase | Descripción |
| :--- | :--- |
| [DatabaseAttributeException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/databaseattributeexception.md) | Error en un atributo de base de datos de un código de la entidad. |
| [DigitizeAsPointException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/digitizeaspointexception.md) | La entidad se tendría que digitalizar como punto con el código indicado. |
| [GeometricRelationException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometricrelationexception.md) | Error en la relación de la entidad con otra entidad. |
| [GeometryException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometryexception.md) | Error en la geometría de la entidad, con unas coordenadas opcionales. |

## Interfaces

| Interfaz | Descripción |
| :--- | :--- |
| [ITrigger](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/README.md) | Método que analiza una entidad y la devuelve, la sustituye o lanza una de estas excepciones. |
