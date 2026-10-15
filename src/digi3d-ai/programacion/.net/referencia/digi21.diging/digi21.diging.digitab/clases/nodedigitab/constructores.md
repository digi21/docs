# Constructores
<!-- id: constructores-3 -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crea un [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) que no pertenece a ninguna tabla de códigos.

```csharp
public NodeDigiTab(string name)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre del código, de 255 caracteres como máximo. |

## Valores iniciales

| Propiedad | Valor |
| :--- | :--- |
| `Name` | `name`. |
| `Type` | `GeometryType.Line`. |
| `Description`, `Table` | Cadena vacía. |
| `Tags`, `Alias`, `Values` | Vacíos. |
| `Priority` | 0. |
| `Color`, `ColorPhotogrammetric` | `"0"`: el color 0 de la paleta de la tabla de códigos. |

El objeto es modificable hasta que se pasa a [AddCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/addcode.md).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `name` es `null`. |

El constructor no comprueba la longitud de `name`. Un nombre de más de 255 caracteres escribe fuera del espacio reservado para el nombre.

## Ejemplo

El ejemplo está en [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/).
