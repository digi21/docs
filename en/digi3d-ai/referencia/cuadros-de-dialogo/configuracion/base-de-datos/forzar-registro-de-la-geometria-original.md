# Force register of the original geometry
<!-- id: forzar-registro-de-la-geometria-original -->
<!-- origen: 037edd905977f187b6a249564cfd3440784a5c88 -->

If enabled, geometries derived from an existing one (by moving, copying, splitting, duplicating, etc.) share the same database record as the original geometry.

## Possible values

* **Yes**. Derived geometries share the original geometry database record.
* **No**. Derived geometries do not retain the original geometry record.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `ForzarRegistroGeometriaOriginal` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'ForzarRegistroGeometriaOriginal' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ForzarRegistroGeometriaOriginal', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
