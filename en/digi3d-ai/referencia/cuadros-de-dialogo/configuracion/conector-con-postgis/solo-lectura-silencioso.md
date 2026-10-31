# Silent reading only
<!-- id: solo-lectura-silencioso -->
<!-- origen: a9a4690532318b04dbdd8fcdebf89ce7db44619e -->

If enabled, the PostGIS importer/exporter neither saves nor deletes geometries in the database, but tells Digi3D.AI that the operation succeeded.

## Possible values

* **Yes**. New, modified, or deleted geometries are not saved in PostGIS, and no error is displayed.
* **No** \(default\). Geometries are saved and deleted in PostGIS.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.PostGIS` |
| Table | `Ints` |
| Value | `SoloLecturaSilencioso` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'SoloLecturaSilencioso' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'SoloLecturaSilencioso', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
