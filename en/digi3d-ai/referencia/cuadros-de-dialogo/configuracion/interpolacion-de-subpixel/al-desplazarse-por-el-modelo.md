# When moving around the model
<!-- id: al-desplazarse-por-el-modelo -->
<!-- origen: dd59a0a850903bae7b9ea2ec9deffd62e11866ed -->

If the sensor supports subpixel interpolation, this option specifies whether calculations use subpixel interpolation when moving the model images (roaming).

## Possible values

* **With subpixel interpolation**. Calculations use subpixel interpolation (greater accuracy and longer processing time than without subpixel interpolation).
* **Without subpixel interpolation**. Calculations do not use subpixel interpolation.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Configuration\Interpolation` |
| Table | `Ints` |
| Value | `TipoInterpolacionRoaming` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\Interpolation');
DELETE FROM Ints WHERE Value = 'TipoInterpolacionRoaming' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoInterpolacionRoaming', 1 FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation';
```

</details>
