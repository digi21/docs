# IDrawingFile

Espacio de nombres: [Digi21.DigiNG.IO](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Esta interfaz define los métodos que implementan los importadores/exportadores de archivos.

```csharp
public interface IDrawingFile : IReadOnlyDrawingFile
```

Tipos derivados: [Bin](../../../../digi21.diging.io.bin/bin.md), [BinDouble](../../../../digi21.diging.io.bindouble/bindouble.md), [Shp](../../../../digi21.diging.io.shp/shp.md), [Geomedia](../../../../digi21.diging.io.geomedia/geomedia.md)

Implementa: [IReadOnlyDrawingFile](../ireadonlydrawingfile/)

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
| [Add\(Entity\)](metodos/add.md#add-entity) | Añade una [Entity](../../../digi21.diging.entities/clases/entity/) al archivo de dibujo. |
| [Add\(Complex\)](metodos/add.md#add-complex) | Añade una geometría de tipo [Complex](../../../digi21.diging.entities/clases/complex/). |
| [Add\(IEnumerable&lt;Entity&gt;\)](metodos/add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](../../../digi21.diging.entities/clases/entity/). |
| [Add\(Line\)](metodos/add.md#add-line) | Añade una geometría de tipo [Line](../../../digi21.diging.entities/clases/line/). |
| [Add\(Point\)](metodos/add.md#add-point) | Añade una geometría de tipo [Point](../../../digi21.diging.entities/clases/point/). |
| [Add\(Polygon\)](metodos/add.md#add-polygon) | Añade una geometría de tipo [Polygon](../../../digi21.diging.entities/clases/polygon/). |
| [Add\(Text\)](metodos/add.md#add-text) | Añade una geometría de tipo [Text](../../../digi21.diging.entities/clases/text/). |
| [Delete\(Entity\)](metodos/delete.md#delete-entity) | Elimina un [Entity](../../../digi21.diging.entities/clases/entity/) del archivo de dibujo. |
| [Delete\(IEnumerable&lt;Entity&gt;\)](metodos/delete.md#delete-ienumerable-less-than-entity-greater-than) | Elimina una enumeración de [Entity](../../../digi21.diging.entities/clases/entity/) del archivo de dibujo. |

