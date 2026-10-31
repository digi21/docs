# ConnectionString
<!-- id: connectionstring -->
<!-- origen: 84f8d1693bca604aacb3a5624d44a4369baea8f6 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Connection string of the database associated with the drawing file.

```csharp
string ConnectionString { get; }
```

## Property value

`string`: database connection string, or `string.Empty` if the file has no database. The database tables can be queried using [IDrawingFile.DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md).
