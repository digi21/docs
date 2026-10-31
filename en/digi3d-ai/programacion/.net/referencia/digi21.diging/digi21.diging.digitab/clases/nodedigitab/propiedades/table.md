# Table
<!-- id: table -->
<!-- origen: 4ce0bf51fecd15bf6ac4cab1db44e836cc7f1a27 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Database table linked to the code.

```csharp
public string Table { get; set; }
```

## Property value

`string` with the database table name, or an empty string if the code is not linked to any table. Each table's fields are in [DigiTab.Tables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/tables.md).

## Exceptions

If the object is read-only (nonmodifiable code table or code already added using `AddCode`), assignment throws `InvalidOperationException`.
