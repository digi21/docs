# Port
<!-- id: puerto -->
<!-- origen: 3813b6e3a400bb299f104c8e6d993493ac3f8205 -->

Specifies the port on which the reference file server is created.

Only used when [Create server](crear-servidor.md) is set to **Yes**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `PuertoServidorArchivosReferencia` |
| Default value | 4456 |

These SQL statements set the value 4456, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'PuertoServidorArchivosReferencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PuertoServidorArchivosReferencia', 4456 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
