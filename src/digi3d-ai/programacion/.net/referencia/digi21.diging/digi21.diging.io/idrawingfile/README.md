# IDrawingFile

Espacio de nombres: [Digi21.DigiNG.IO](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta interfaz define los métodos que implementan los importadores/exportadores de archivos.

```csharp
public interface IDrawingFile : IReadOnlyDrawingFile
```

Tipos derivados: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md)

Implementa: [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/)

## Propiedades

|  |  |
| :--- | :--- |
| [CanRead](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canread.md) | Indica si el importador puede leer geometrías del archivo. |
| [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) | Indica si el importador puede almacenar geometrías en el archivo. |
| [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) | Devuelve un diccionario cuya clave es el nombre de una tabla y cuyo valor es el número de tabla. |
| [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Devuelve la ruta del archivo de dibujo. |
| [Wkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/wkt.md) especificando el Sistema de Referencia en el que están las coordenadas de las geometrías del archivo de dibujo. |

## Métodos


|  |  |
| :--- | :--- |
| [Add(Entity)](metodos/add.md#add-entity) | Añade una [Entity](../../digi21.diging.entities/entity/) al archivo de dibujo. |
| [Add(Entity, IDictionary<string, IDictionary<string, object>>)](metodos/add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than) | Añade una [Entity](../../digi21.diging.entities/entity/) junto con datos de base de datos. |
| [Add(Complex)](metodos/add.md#add-complex) | Añade una geometría de tipo [Complex](../../digi21.diging.entities/complex/). |
| [Add(IEnumerable<Entity>)](metodos/add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](../../digi21.diging.entities/entity/). |
| [Add(Line)](metodos/add.md#add-line) | Añade una geometría de tipo [Line](../../digi21.diging.entities/line/). |
| [Add(Point)](metodos/add.md#add-point) | Añade una geometría de tipo [Point](../../digi21.diging.entities/point/). |
| [Add(Polygon)](metodos/add.md#add-polygon) | Añade una geometría de tipo [Polygon](../../digi21.diging.entities/polygon/). |
| [Add(Text)](metodos/add.md#add-text) | Añade una geometría de tipo [Text](../../digi21.diging.entities/text/). |
| [Delete(Entity)](metodos/delete.md#delete-entity) | Elimina un [Entity](../../digi21.diging.entities/entity/) del archivo de dibujo. |
| [Delete(IEnumerable<Entity>)](metodos/delete.md#delete-ienumerable-less-than-entity-greater-than) | Elimina una enumeración de [Entity](../../digi21.diging.entities/entity/) del archivo de dibujo. |
| [GetDatabaseAttributes(Entity)](../ireadonlydrawingfile/metodos/getdatabaseattributes.md) |Extrae de la base de datos asociada al archivo de dibujo los atributos almacenados para la [Entity](../../digi21.diging.entities/entity/) pasada por parámetros.<br>(Heredado de [IReadOnlyDrawingFile](../ireadonlydrawingfile/))|


