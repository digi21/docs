# Table
<!-- id: table-2 -->
<!-- origen: b663116c5a91a4f7a40f43da77d566cbb10e5f20 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Number of the database table storing the record linked to the code.

```csharp
public int? Table { get; }
```

## Property value

The table number, or `null` if the code is not linked to the database.

The table number is its number in the database's catalog table (`CATDBS` or `MSCATALOG`). The drawing file's [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) property returns each table's name and number.

The value is assigned in the constructor and cannot be changed.
