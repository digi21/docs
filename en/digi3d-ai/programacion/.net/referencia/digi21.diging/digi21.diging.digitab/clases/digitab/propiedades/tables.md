# Tables
<!-- id: tables -->
<!-- origen: 8170e86bb1a6b151e4fb7294f1993384dfe53f64 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Database tables defined by the code table schema, with their fields.

```csharp
public IDictionary<string, IList<Tuple<string, Type>>> Tables { get; }
```

## Property value

Each read of `Tables` returns a new dictionary. Each entry's key is the database table name and its value is that table's field list, in schema order. Each field is a tuple with the field name (`Item1`) and its .NET type (`Item2`):

| Field type in the schema | `Item2` |
| :--- | :--- |
| Character | `typeof(string)` |
| Numeric | `typeof(int)` |
| Floating point | `typeof(float)` |
| Other | `null` |

Modifying the dictionary or lists does not change the code table.

Each code's [NodeDigiTab.Table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/propiedades/table.md) property indicates which of these database tables it is linked to.
