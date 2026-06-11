# DrawingFile

Espacio de nombres: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase permite interactuar con el archivo de dibujo.

```csharp
public class DrawingFile : IDrawingFile, IDisposable
```



## Propiedades


|  |  |
| :--- | :--- |
| [CanRead](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canread.md) | Indica si el importador puede leer geometrías del archivo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [CanWrite](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) | Indica si el importador puede almacenar geometrías en el archivo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [DatabaseTables](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) | Devuelve un diccionario cuya clave es el nombre de una tabla y cuyo valor es el número de tabla.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Path](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/path.md) | Devuelve la ruta del archivo de dibujo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Wkt](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/wkt.md) | Devuelve una cadena [WKT](https://es.wikipedia.org/wiki/Well_Known_Text#Sistemas_de_referencia_espacial) especificando el Sistema de Referencia en el que están las coordenadas de las geometrías del archivo de dibujo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |


## Métodos


|  |  |
| :--- | :--- |
| [Add(Entity)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-entity) | Añade una [Entity](../../../digi21.diging/digi21.diging.entities/clases/entity/) al archivo de dibujo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(Entity, IDictionary<string, IDictionary<string, object>>)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than) | Añade una [Entity](../../../digi21.diging/digi21.diging.entities/clases/entity/) junto con datos de base de datos.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(Complex)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-complex) | Añade una geometría de tipo [Complex](../../../digi21.diging/digi21.diging.entities/clases/complex/).; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(IEnumerable<Entity>)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-ienumerable-less-than-entity-greater-than) | Añade una enumeración de [Entity](../../../digi21.diging/digi21.diging.entities/clases/entity/).; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(Line)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-line) | Añade una geometría de tipo [Line](../../../digi21.diging/digi21.diging.entities/clases/line/).; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(Point)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-point) | Añade una geometría de tipo [Point](../../../digi21.diging/digi21.diging.entities/clases/point/).; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(Polygon)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-polygon) | Añade una geometría de tipo [Polygon](../../../digi21.diging/digi21.diging.entities/clases/polygon/).; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Add(Text)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-text) | Añade una geometría de tipo [Text](../../../digi21.diging/digi21.diging.entities/clases/text/).; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Delete(Entity)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md#delete-entity) | Elimina un [Entity](../../../digi21.diging/digi21.diging.entities/clases/entity/) del archivo de dibujo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Delete(IEnumerable<Entity>)](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md#delete-ienumerable-less-than-entity-greater-than) | Elimina una enumeración de [Entity](../../../digi21.diging/digi21.diging.entities/clases/entity/) del archivo de dibujo.; (Heredado de [IDrawingFile](../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/)) |
| [Dispose](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable.dispose?view=net-5.0) | Libera los recursos utilizados por la tabla de códigos.; (Heredado de [IDisposable](https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0)) |




