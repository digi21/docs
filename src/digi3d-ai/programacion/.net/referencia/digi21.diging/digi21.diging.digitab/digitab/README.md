# DigiTab

Espacio de nombres: [Digi21.DigiNG.DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa métodos para interactuar con tablas de códigos de Digi3D.AI.

```csharp
public sealed class DigiTab : IDisposable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → DigiTab

Implementa: [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0)

## Propiedades

|  |  |
| :--- | :--- |
| [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md)con las características de cada código perteneciente a la tabla de códigos. |
| [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Devuelve la ruta de la tabla de códigos. |
| [Tables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/tables.md) | Devuelve un diccionario de esquemas de base de datos. |
| [Item\[string\]](propiedades/item-string.md) | Devuelve el [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) con las características del código cuyo nombre coincide con el parámetro. |

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Load](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md). |

## Métodos


|  |  |
| :--- | :--- |
| [AddCode](metodos/addcode.md) | Añade un nuevo código a la tabla de códigos. |
| [Dispose](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable.dispose?view=net-5.0) |Libera los recursos utilizados por la tabla de códigos.<br>(Heredado de [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0))|
| [HasCode(string)](metodos/hascode.md#hascode-string) | Indica si la tabla de códigos contiene un código cuyo nombre sea el pasado por parámetros. |
| [HasCode(string, bool)](metodos/hascode.md#hascode-string-bool) | Indica si la tabla de códigos contiene un código cuyo nombre sea el pasado por parámetros permitiendo indicar si aplicar lógica de comodines. |
| [Write(string)](metodos/write.md) | Almacena la tabla de códigos en un archivo. |




