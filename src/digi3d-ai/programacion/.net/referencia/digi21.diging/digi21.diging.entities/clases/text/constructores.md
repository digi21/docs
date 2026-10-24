# Constructores
<!-- id: constructores-10 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crean un [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) de lectura y escritura, sin archivo de dibujo (`Owner` es `null`), con la cadena vacía, la coordenada (0, 0, 0), la altura 0, la rotación 0, la orientación [Quaternion.Identity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) (el plano XY) y la justificación `SouthWest`.

```csharp
public Text(Code code)
public Text(IEnumerable<Code> codes)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `code` | [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/) del texto. |
| `codes` | Códigos del texto, en el orden de la enumeración. Puede estar vacía. |

`CreationTime` toma la hora del sistema en UTC en el momento de la construcción.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `codes` es `null`. |

## Ejemplo

El [ejemplo de Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/#ejemplo) usa `Text(Code)`.
