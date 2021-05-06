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

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-entity">Add(Entity)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una <a href="../../../digi21.diging.entities/clases/entity/">Entity</a> al
        archivo de dibujo.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than">Add(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una <a href="../../../digi21.diging.entities/clases/entity/">Entity</a> junto
        con datos de base de datos.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-complex">Add(Complex)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging.entities/clases/complex/">Complex</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-ienumerable-less-than-entity-greater-than">Add(IEnumerable&lt;Entity&gt;)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una enumeraci&#xF3;n de <a href="../../../digi21.diging.entities/clases/entity/">Entity</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-line">Add(Line)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging.entities/clases/line/">Line</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-point">Add(Point)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging.entities/clases/point/">Point</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-polygon">Add(Polygon)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging.entities/clases/polygon/">Polygon</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/add.md#add-text">Add(Text)</a>
      </td>
      <td style="text-align:left">A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging.entities/clases/text/">Text</a>.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/delete.md#delete-entity">Delete(Entity)</a>
      </td>
      <td style="text-align:left">Elimina un <a href="../../../digi21.diging.entities/clases/entity/">Entity</a> del
        archivo de dibujo.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="metodos/delete.md#delete-ienumerable-less-than-entity-greater-than">Delete(IEnumerable&lt;Entity&gt;)</a>
      </td>
      <td style="text-align:left">Elimina una enumeraci&#xF3;n de <a href="../../../digi21.diging.entities/clases/entity/">Entity</a> del
        archivo de dibujo.</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../ireadonlydrawingfile/metodos/getdatabaseattributes.md">GetDatabaseAttributes(Entity)</a>
      </td>
      <td style="text-align:left">
        <p>Extrae de la base de datos asociada al archivo de dibujo los atributos
          almacenados para la <a href="../../../digi21.diging.entities/clases/entity/">Entity</a> pasada
          por par&#xE1;metros.</p>
        <p>(Heredado de <a href="../ireadonlydrawingfile/">IReadOnlyDrawingFile</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

