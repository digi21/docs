# Constant-size regions of interest
<!-- id: regiones-de-interes-de-tamano-constante -->
<!-- origen: e591da27d256115a998e5057cba4e664a158f9f7 -->

If enabled, you can configure the size of regions of interest requested from PostGIS in the drawing files pane.

## Possible values

* **Yes**. Regions of interest have a configurable constant size.
* **No**. Regions of interest do not have a constant size.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.PostGIS` |
| Table | `Ints` |
| Value | `RegionesDeInteresConTamañoConstante` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'RegionesDeInteresConTamañoConstante' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'RegionesDeInteresConTamañoConstante', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
