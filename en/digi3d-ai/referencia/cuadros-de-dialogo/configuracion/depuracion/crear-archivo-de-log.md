# Create a LOG file
<!-- id: crear-archivo-de-log -->
<!-- origen: 8bfe3302ec5a0881dede0b9e0a69b85be0a8e253 -->

Configures whether Digi3D.AI generates an operation log file (LOG) containing information about operations performed by the program.

If an error occurs, operation information stored in the LOG file helps locate its cause.

The file location is specified in [LOG file path](ruta-al-archivo-de-log.md).

## Possible values

* **Yes**. Digi3D.AI creates the LOG file and stores information about its operations there.
* **No**. Digi3D.AI does not generate a LOG file.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `GenerarArchivoLog` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarArchivoLog' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarArchivoLog', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
