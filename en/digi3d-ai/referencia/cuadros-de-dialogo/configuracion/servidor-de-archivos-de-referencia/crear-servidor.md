# Create server
<!-- id: crear-servidor -->
<!-- origen: 13f9f4d60f73daf64326232a8250f58997450ed0 -->

Configures whether Digi3D.AI creates a server to notify other computers whenever a drawing file is updated. This is useful when several computers work simultaneously on the same reference drawing files.

The server is published on the specified [port](puerto.md).

## Possible values

* **Yes**. Digi3D.AI creates the server and notifies other computers when a drawing file is updated.
* **No**. Digi3D.AI does not create a server.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `ServidorArchivosReferencia` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ServidorArchivosReferencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ServidorArchivosReferencia', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
