# AnalyzeEntity
<!-- id: analyzeentity -->

Espacio de nombres: `Digi21.DigiNG.Plugin.QualityControl`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Método de [ITrigger](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/README.md) que analiza una entidad.

```csharp
Entity AnalyzeEntity(Entity entity, bool addingEntity)
```

En la versión 26.0.0, Digi3D.AI no llama a este método. Los guiones de control de calidad de la tabla de códigos se escriben en Python: lee [Controles de calidad en Python](/digi3d-ai/programacion/python/controles-de-calidad/README.md).

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `entity` | Entidad que se analiza ([Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/README.md)). |
| `addingEntity` | `true` si la entidad se está almacenando; `false` si se analiza una entidad que ya está en el archivo de dibujo. |

## Valor devuelto

La entidad que se almacenaría: la propia `entity` si cumple el control de calidad, u otra entidad que la sustituye.

## Excepciones

Las excepciones del espacio de nombres describen los errores:

| Excepción | Error |
| :--- | :--- |
| [GeometryException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometryexception.md) | Error en la geometría de la entidad. |
| [GeometricRelationException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometricrelationexception.md) | Error en la relación con otra entidad. |
| [DatabaseAttributeException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/databaseattributeexception.md) | Error en un atributo de base de datos. |
| [DigitizeAsPointException](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/digitizeaspointexception.md) | La entidad se tendría que digitalizar como punto. |

## Ejemplo

Este control de calidad de curvas de nivel comprueba que la entidad es una línea, que no es demasiado corta, que su Z es constante y que el primer código tiene el atributo `COTA`.

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.QualityControl;

namespace ControlCalidad;

public class ControlCurvas : ITrigger
{
    public Entity AnalyzeEntity(Entity entity, bool addingEntity)
    {
        if (entity is not ReadOnlyLine línea)
            throw new GeometryException("Las curvas de nivel deben ser líneas.");

        if (línea.Points.Count < 2 || línea.Perimeter < 0.5)
            throw new DigitizeAsPointException(línea.Codes[0].Name, "La línea es demasiado corta.");

        for (var i = 1; i < línea.Points.Count; i++)
        {
            if (línea.Points[i].Z != línea.Points[0].Z)
                throw new GeometryException("La curva de nivel no tiene Z constante.", línea.Points[i]);
        }

        if (!línea.Codes[0].Attributes.ContainsKey("COTA"))
        {
            throw new DatabaseAttributeException(
                "Falta el atributo COTA.",
                0,
                "COTA",
                [Tuple.Create("Asignar la Z de la curva", "ASIGNA_COTA")]);
        }

        return entity;
    }
}
```
