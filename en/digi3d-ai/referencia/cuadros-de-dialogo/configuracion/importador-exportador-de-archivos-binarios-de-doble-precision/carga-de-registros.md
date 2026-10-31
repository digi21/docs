# Record loading
<!-- id: carga-de-registros -->
<!-- origen: de582d3320a51fe4c288b0eb74cf4b9a2c238dd8 -->

Configures when the attributes of each code are loaded from the database.

## Possible values

* **When necessary**. Attributes are loaded on demand, when needed.
* **When loading the geometry from the drawing file**. Attributes are loaded together with the geometry.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.BinDouble` |
| Table | `Ints` |
| Value | `CargarRegistrosAsincrono` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.BinDouble');
DELETE FROM Ints WHERE Value = 'CargarRegistrosAsincrono' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.BinDouble');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CargarRegistrosAsincrono', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.BinDouble';
```

</details>
