# Camera memory usage
<!-- id: consumo-de-memoria-por-camara -->
<!-- origen: 14184f2cf2d27d8a2121f7cadc227da6d6f0e16a -->

Specifies the maximum memory, in MB, used by each camera when loading a stereo model.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `MaxMemv2` |
| Default value | 256 |

These SQL statements set the value 256, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'MaxMemv2' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MaxMemv2', 256 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
