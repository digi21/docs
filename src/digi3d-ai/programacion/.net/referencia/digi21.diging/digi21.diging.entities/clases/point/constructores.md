# Constructores
<!-- id: constructores-7 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crean un [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) de lectura y escritura, sin archivo de dibujo (`Owner` es `null`), con la coordenada (0, 0, 0) y la rotación 0.

```csharp
public Point(Code code)
public Point(IEnumerable<Code> codes)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `code` | [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/) del punto. |
| `codes` | Códigos del punto, en el orden de la enumeración. Puede estar vacía. |

`CreationTime` toma la hora del sistema en UTC en el momento de la construcción.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `codes` es `null`. |

## Ejemplo

El [ejemplo de Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/#ejemplo) usa `Point(Code)`.
