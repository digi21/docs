# Type of cutting of geometries
<!-- id: tipo-de-recorte-de-geometrias -->
<!-- origen: 9842fcc1b76530b36beb2be41c3a28c15f2ea1ca -->

Specifies whether geometries returned by the PostGIS server are clipped to the region of interest window and where clipping occurs.

## Possible values

* **Do not trim** \(default\). Complete geometries are loaded without clipping.
* **Trimming on the server**. The PostGIS server returns geometries clipped to the region of interest.
* **Trim on local**. Digi3D.AI clips geometries returned by the server on the local computer.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.PostGIS` |
| Table | `Ints` |
| Value | `TipoRecorteInterseccionRoi` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'TipoRecorteInterseccionRoi' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoRecorteInterseccionRoi', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
