# Geometry elimination mode
<!-- id: modo-de-eliminacion-de-geometrias -->
<!-- origen: d22a38584165172a89df22a11683837ce0c8faec -->

Specifies how a geometry is marked as deleted in the Shapefile.

## Possible values

* **Storing a value in a field in the DBF file**. Deletion is marked by saving a value in a DBF file field.
* **Marking as deleted the record in the DBF file**. Deletion is marked by marking the DBF file record as deleted.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Shp` |
| Table | `Ints` |
| Value | `EliminarAlmacenandoValorEnCampo` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Ints WHERE Value = 'EliminarAlmacenandoValorEnCampo' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'EliminarAlmacenandoValorEnCampo', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
