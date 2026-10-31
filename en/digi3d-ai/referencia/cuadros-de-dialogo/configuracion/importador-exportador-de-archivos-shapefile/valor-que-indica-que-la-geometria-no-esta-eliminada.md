# Value indicating that the geometry is NOT removed.
<!-- id: valor-que-indica-que-la-geometria-no-esta-eliminada -->
<!-- origen: 9090f4df0ab6c33f3493df25f021cf692bbdbd6e -->

Specifies the [deletion marker field](campo-en-el-que-almacenar-marca-de-eliminado.md) value that identifies a geometry that is not deleted.

* When saving, this value is stored in the field of geometries that are not deleted.
* When loading, a geometry whose field contains a different value is considered deleted.

The default value is `99999999`.

Only used if you selected **Storing a value in a field in the DBF file** in [Geometry deletion mode](modo-de-eliminacion-de-geometrias.md).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Shp` |
| Table | `Texts` |
| Value | `ValorGeometriaNoEliminada` |
| Default value | `99999999` |

These SQL statements set the text `99999999`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Texts WHERE Value = 'ValorGeometriaNoEliminada' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'ValorGeometriaNoEliminada', '99999999' FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
