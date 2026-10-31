# Connect with servers
<!-- id: conectar-con-servidores -->
<!-- origen: aae4e25840da292a1b55689c2b1d2ff49a5206f3 -->

Configures whether Digi3D.AI connects to the server that locked a drawing file to obtain file changes in real time.

## Possible values

* **Yes**. Digi3D.AI connects to the server that locked the drawing file and receives its changes in real time.
* **No**. Digi3D.AI does not connect to other reference file servers.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `ConectarConServidoresArchivosReferencia` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ConectarConServidoresArchivosReferencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ConectarConServidoresArchivosReferencia', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
