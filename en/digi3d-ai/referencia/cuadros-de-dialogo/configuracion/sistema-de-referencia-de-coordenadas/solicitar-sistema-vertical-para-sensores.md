# Ask for sensor's vertical system
<!-- id: solicitar-sistema-vertical-para-sensores -->
<!-- origen: dc9da48bcb261cd9e8815ead07480f09efa7bbce -->

If the coordinate reference system provided by the sensor does not include a vertical reference system, this option specifies whether Digi3D.AI asks for it. If disabled, Digi3D.AI assumes the vertical system is unknown.

## Possible values

* **Yes**. The vertical reference system is requested when the sensor does not provide it.
* **No**. The vertical system is assumed to be unknown.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `SolicitarSistemaVerticalSiElSensorEs2D` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'SolicitarSistemaVerticalSiElSensorEs2D' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'SolicitarSistemaVerticalSiElSensorEs2D', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
