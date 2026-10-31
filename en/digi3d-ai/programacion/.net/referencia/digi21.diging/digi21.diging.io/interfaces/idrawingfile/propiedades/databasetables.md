# DatabaseTables
<!-- id: databasetables -->
<!-- origen: c0421601355d009c5585916989c05409c6f1fef8 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Tables in the database associated with the drawing file.

```csharp
IDictionary<string, int> DatabaseTables { get; }
```

## Property value

`IDictionary<string, int>`: the key is the table name, and the value is its table number in the database. The dictionary is empty if the file has no database (empty [ConnectionString](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/connectionstring.md)).

Each read of the property creates a new dictionary: modifying the dictionary does not change the database.
