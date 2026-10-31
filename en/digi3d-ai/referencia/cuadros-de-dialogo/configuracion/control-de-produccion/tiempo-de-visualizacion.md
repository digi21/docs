# Display time
<!-- id: tiempo-de-visualizacion -->
<!-- origen: c87dcc9546d8b33cd6e25ff8d7c6d22f5c7bcfa3 -->

Specifies the duration, in minutes, of each production bar block. The bar represents 12 hours. Each block is colored green if, during the interval it represents, you pressed a mouse button in a drawing window or a pedal in a photogrammetric window. If you pressed none of these buttons or pedals during that interval, the block is colored red.

## Possible values

A number of minutes from 1 to 720. The default value is 2. Digi3D.AI clamps values outside this interval to the nearest limit.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\ProductionControl` |
| Table | `Ints` |
| Value | `TiempoVisualizacion` |
| Default value | 2 |

These SQL statements set the value 2, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\ProductionControl');
DELETE FROM Ints WHERE Value = 'TiempoVisualizacion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\ProductionControl');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TiempoVisualizacion', 2 FROM Keys WHERE Path = 'App\Configuration\ProductionControl';
```

</details>
