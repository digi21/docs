# IDrawingFile

Espacio de nombres: [Digi21.DigiNG.IO](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta interfaz define los métodos que implementan los importadores/exportadores de archivos.

```csharp
public interface IDrawingFile : IEnumerable<Entity>
```

Tipos derivados: [Bin](../../../digi21.diging.io.bin/bin.md), [BinDouble](../../../digi21.diging.io.bindouble/bindouble.md), [Shp](../../../digi21.diging.io.shp/shp.md), [Geomedia](../../../digi21.diging.io.geomedia/geomedia.md)

## Propiedades

|  |  |
| :--- | :--- |
| [CanRead](propiedades/canread.md) | Indica si el importador puede leer geometrías del archivo. |
| [CanWrite](propiedades/canwrite.md) | Indica si el importador puede almacenar geometrías en el archivo. |
| [DatabaseTables](propiedades/databasetables.md) | Devuelve un diccionario cuya clave es el nombre de una tabla y cuyo valor es el número de tabla. |
| [Path](propiedades/path.md) | Devuelve la ruta del archivo de dibujo. |
| [Wkt](propiedades/wkt.md) | Devuelve una cadena [WKT](https://es.wikipedia.org/wiki/Well_Known_Text#Sistemas_de_referencia_espacial) especificando el Sistema de Referencia en el que están las coordenadas de las geometrías del archivo de dibujo. |

## Métodos

|  |  |
| :--- | :--- |
| [Add\(Entity\)](metodos/add.md#add-entity) | Añade una [Entity](../../digi21.diging.entities/entity/) al archivo de dibujo. |
| [Add\(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;\)](metodos/add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than) | Añade una [Entity](../../digi21.diging.entities/entity/) junto con datos de base de datos. |
| [Add\(Complex\)](metodos/add.md#add-complex) | Añade una geometría de tipo [Complex](../../digi21.diging.entities/complex/). |
| [Add\(IEnumerable&lt;Entity&gt;\)](metodos/add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](../../digi21.diging.entities/entity/). |
| [Add\(Line\)](metodos/add.md#add-line) | Añade una geometría de tipo [Line](../../digi21.diging.entities/line/). |
| [Add\(Point\)](metodos/add.md#add-point) | Añade una geometría de tipo [Point](../../digi21.diging.entities/point/). |
| [Add\(Polygon\)](metodos/add.md#add-polygon) | Añade una geometría de tipo [Polygon](../../digi21.diging.entities/polygon/). |
| [Add\(Text\)](metodos/add.md#add-text) | Añade una geometría de tipo [Text](../../digi21.diging.entities/text/). |
| [Contains\(Entity\)](metodos/contains.md) | Indica si el archivo de dibujo contiene un [Entity](../../digi21.diging.entities/entity/). |
| [Delete\(Entity\)](metodos/delete.md#delete-entity) | Elimina un [Entity](../../digi21.diging.entities/entity/) del archivo de dibujo. |
| [Delete\(IEnumerable&lt;Entity&gt;\)](metodos/delete.md#delete-ienumerable-less-than-entity-greater-than) | Elimina una enumeración de [Entity](../../digi21.diging.entities/entity/) del archivo de dibujo. |
| [GetDatabaseAttributes\(Entity\)](metodos/getdatabaseattributes.md) | Extrae de la base de datos asociada al archivo de dibujo los atributos almacenados para la [Entity](../../digi21.diging.entities/entity/) pasada por parámetros. |

