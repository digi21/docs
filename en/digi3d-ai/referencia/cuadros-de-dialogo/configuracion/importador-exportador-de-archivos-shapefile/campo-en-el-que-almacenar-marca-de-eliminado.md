# Field in which to store deleted mark
<!-- id: campo-en-el-que-almacenar-marca-de-eliminado -->
<!-- origen: 71bd77d75c8d8fc2475dcd4765b4dc15d940bfd4 -->

Specifies the name of the DBF file field storing the value that marks a geometry as deleted.

Only used if you selected **Storing a value in a field in the DBF file** in [Geometry deletion mode](modo-de-eliminacion-de-geometrias.md).

Empty by default.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Shp` |
| Table | `Texts` |
| Value | `CampoEliminado` |
| Default value | (empty) |

These SQL statements set the text `ELIMINADO`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Texts WHERE Value = 'CampoEliminado' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'CampoEliminado', 'ELIMINADO' FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
