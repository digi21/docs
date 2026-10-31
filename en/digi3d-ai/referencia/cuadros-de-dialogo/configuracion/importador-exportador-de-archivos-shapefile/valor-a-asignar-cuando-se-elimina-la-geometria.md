# Value to be assigned when geometry is removed
<!-- id: valor-a-asignar-cuando-se-elimina-la-geometria -->
<!-- origen: 0c07638ce6e204ef43e2af08c4cca4153292383a -->

Specifies the value stored in the [deletion marker field](campo-en-el-que-almacenar-marca-de-eliminado.md) when deleting a geometry.

Supports special database schema values. The default value is `%DATETIME%`, which is replaced with the date and time when the geometry is deleted.

Only used if you selected **Storing a value in a field in the DBF file** in [Geometry deletion mode](modo-de-eliminacion-de-geometrias.md).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Shp` |
| Table | `Texts` |
| Value | `ValorGeometriaEliminada` |
| Default value | `%DATETIME%` |

These SQL statements set the text `%DATETIME%`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Texts WHERE Value = 'ValorGeometriaEliminada' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'ValorGeometriaEliminada', '%DATETIME%' FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
