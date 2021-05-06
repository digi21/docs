# IReadOnlyDrawingFile

Espacio de nombres: [Digi21.DigiNG.IO](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Esta interfaz define los métodos que implementan los importadores/exportadores de solo lectura de archivos.

```csharp
public interface IReadOnlyDrawingFile : IEnumerable<Entity>
```

Tipos derivados: [IDrawingFile](../idrawingfile/)

Implementa: [IEnumerable&lt;Entity&gt;](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ienumerable-1?view=net-5.0)

## Métodos

|  |  |
| :--- | :--- |
| [GetDatabaseAttributes\(Entity\)](metodos/getdatabaseattributes.md) | Extrae de la base de datos asociada al archivo de dibujo los atributos almacenados para la [Entity](../../../digi21.diging.entities/clases/entity/) pasada por parámetros. |

## Propiedades

|  |  |
| :--- | :--- |
| [ConnectionString](propiedades/connectionstring.md) | Devuelve la cadena de conexión de la base de datos asociada con el archivo de dibujo. |

## 



