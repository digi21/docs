# IReadOnlyDrawingFile

Espacio de nombres: [Digi21.DigiNG.IO](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta interfaz define los métodos que implementan los importadores/exportadores de solo lectura de archivos.

```csharp
public interface IReadOnlyDrawingFile : IEnumerable<Entity>
```

Tipos derivados: [IDrawingFile](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/)

Implementa: [IEnumerable&lt;Entity&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)

## Métodos

|  |  |
| :--- | :--- |
| [GetDatabaseAttributes\(Entity\)](metodos/getdatabaseattributes.md) | Extrae de la base de datos asociada al archivo de dibujo los atributos almacenados para la [Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) pasada por parámetros. |

