# TextJustification
<!-- id: textjustification -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Posición del punto de inserción de un texto respecto al rectángulo que ocupa la cadena. La usan [ReadOnlyText.Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/justification.md) y [Text.Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md).

```csharp
public enum TextJustification
```

## Valores

| Valor | Número | Significado |
| :--- | ---: | :--- |
| `SouthWest` | 0 | El punto de inserción es la esquina inferior izquierda (suroeste) del texto. |
| `West` | 1 | El punto de inserción es el punto medio del lado izquierdo (oeste). |
| `NorthWest` | 2 | El punto de inserción es la esquina superior izquierda (noroeste). |
| `North` | 3 | El punto de inserción es el punto medio del lado superior (norte). |
| `NorthEast` | 4 | El punto de inserción es la esquina superior derecha (noreste). |
| `East` | 5 | El punto de inserción es el punto medio del lado derecho (este). |
| `SouthEast` | 6 | El punto de inserción es la esquina inferior derecha (sureste). |
| `South` | 7 | El punto de inserción es el punto medio del lado inferior (sur). |
| `Center` | 8 | El punto de inserción es el centro del texto. |

Los números coinciden con los que guarda la entidad nativa de Digi3D.AI. Un `Text` nuevo tiene la justificación `SouthWest`.

## Ejemplo

El [ejemplo de Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/#ejemplo) crea un texto con cada valor de la enumeración.
