# Tables/Registers to show
<!-- id: tablas-registros-a-mostrar -->
<!-- origen: 5395c0bf9e724738555d974474e8adb17e8d32ee -->

Specifies the tables and records displayed in the database editor pane.

## Possible values

* **Show complete database**. Displays all tables and records.
* **All records only from linked tables**. Displays all records, but only from linked tables.
* **Show only tables and geometry records in the drawing window**. Displays only tables and records corresponding to geometries present in the drawing window.
* **Display geometries complying with Python expression**. Displays only geometries satisfying a Python expression.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Configuration\DatabaseEditor` |
| Table | `Ints` |
| Value | `QueRegistrosMostrar` |
| Default value | 1 or 2, depending on which code reads it first |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'QueRegistrosMostrar' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'QueRegistrosMostrar', 0 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```

</details>
