# AddCode
<!-- id: addcode -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Añade un código a la tabla de códigos.

```csharp
public void AddCode(NodeDigiTab code)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `code` | [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) creado con su constructor. |

## Notas

`AddCode` asigna al código el primer estilo de la tabla de códigos y los parámetros de traducción de los formatos de importación y exportación de la tabla, añade el código al final y reordena la tabla.

Después de la llamada, `code` es de solo lectura: asignar una de sus propiedades lanza `InvalidOperationException`. Para modificar el código añadido, obtenlo otra vez con el indizador [this[string]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) o con [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/codes.md).

`AddCode` no comprueba si la tabla ya tiene un código con ese nombre. Para no duplicar el código, comprueba antes el nombre con [HasCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md).

El cambio se hace en memoria. Para guardarlo, llama a [Write](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La tabla de códigos no es modificable, por ejemplo la que devuelve `DigiNG.DigiTab`. |
| `ArgumentException` | `code` ya se añadió a una tabla de códigos con `AddCode`. |
| `NullReferenceException` | `code` es `null`. |

`AddCode` no lanza `ArgumentException` con un `NodeDigiTab` obtenido de `Codes` o del indizador de otra tabla modificable: ese código pasa a estar en las dos tablas a la vez. Para copiar un código de una tabla a otra, crea un `NodeDigiTab` nuevo y copia sus propiedades.

## Ejemplo

El ejemplo completo está en [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/).
