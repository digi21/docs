# DrawingFile

Espacio de nombres: [Digi21.DigiNG.Plugin](../../)  
Ensamblado: [Digi21.DigiNG](../../../digi21.diging/)

Esta clase permite interactuar con el archivo de dibujo.

```csharp
public class DrawingFile : IDrawingFile, IDisposable
```



## Propiedades

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canread.md">CanRead</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el importador puede leer geometr&#xED;as del archivo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md">CanWrite</a>
      </td>
      <td style="text-align:left">
        <p>Indica si el importador puede almacenar geometr&#xED;as en el archivo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md">DatabaseTables</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve un diccionario cuya clave es el nombre de una tabla y cuyo valor
          es el n&#xFA;mero de tabla.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/path.md">Path</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve la ruta del archivo de dibujo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/wkt.md">Wkt</a>
      </td>
      <td style="text-align:left">
        <p>Devuelve una cadena <a href="https://es.wikipedia.org/wiki/Well_Known_Text#Sistemas_de_referencia_espacial">WKT</a> especificando
          el Sistema de Referencia en el que est&#xE1;n las coordenadas de las geometr&#xED;as
          del archivo de dibujo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
  </tbody>
</table>

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
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-entity">Add(Entity)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una <a href="../../../digi21.diging/digi21.diging.entities/clases/entity/">Entity</a> al
          archivo de dibujo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-entity-idictionary-less-than-string-idictionary-less-than-string-object-greater-than-greater-than">Add(Entity, IDictionary&lt;string, IDictionary&lt;string, object&gt;&gt;)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una <a href="../../../digi21.diging/digi21.diging.entities/clases/entity/">Entity</a> junto
          con datos de base de datos.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-complex">Add(Complex)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging/digi21.diging.entities/clases/complex/">Complex</a>.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-ienumerable-less-than-entity-greater-than">Add(IEnumerable&lt;Entity&gt;)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una enumeraci&#xF3;n de <a href="../../../digi21.diging/digi21.diging.entities/clases/entity/">Entity</a>.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-line">Add(Line)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging/digi21.diging.entities/clases/line/">Line</a>.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-point">Add(Point)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging/digi21.diging.entities/clases/point/">Point</a>.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-polygon">Add(Polygon)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging/digi21.diging.entities/clases/polygon/">Polygon</a>.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md#add-text">Add(Text)</a>
      </td>
      <td style="text-align:left">
        <p>A&#xF1;ade una geometr&#xED;a de tipo <a href="../../../digi21.diging/digi21.diging.entities/clases/text/">Text</a>.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md#delete-entity">Delete(Entity)</a>
      </td>
      <td style="text-align:left">
        <p>Elimina un <a href="../../../digi21.diging/digi21.diging.entities/clases/entity/">Entity</a> del
          archivo de dibujo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md#delete-ienumerable-less-than-entity-greater-than">Delete(IEnumerable&lt;Entity&gt;)</a>
      </td>
      <td style="text-align:left">
        <p>Elimina una enumeraci&#xF3;n de <a href="../../../digi21.diging/digi21.diging.entities/clases/entity/">Entity</a> del
          archivo de dibujo.</p>
        <p>(Heredado de <a href="../../../digi21.diging/digi21.diging.io/interfaces/idrawingfile/">IDrawingFile</a>)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="https://docs.microsoft.com/en-us/dotnet/api/system.idisposable.dispose?view=net-5.0">Dispose</a>
      </td>
      <td style="text-align:left">
        <p>Libera los recursos utilizados por la tabla de c&#xF3;digos.</p>
        <p>(Heredado de <a href="https://docs.microsoft.com/en-us/dotnet/api/system.idisposable?view=net-5.0">IDisposable</a>)</p>
      </td>
    </tr>
  </tbody>
</table>



