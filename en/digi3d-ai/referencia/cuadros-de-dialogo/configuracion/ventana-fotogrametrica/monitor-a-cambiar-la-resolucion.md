# Resolution change monitor
<!-- id: monitor-a-cambiar-la-resolucion -->
<!-- origen: 4fabfcf836cd62ffd3670b3eb4042924572dc3b3 -->

Specifies the display whose resolution changes when loading a stereoscopic view.

Only used if [Change resolution](cambiar-resolucion.md) is enabled.

## Possible values

One of the displays detected on the computer.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `MonitorEstereo` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'MonitorEstereo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MonitorEstereo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
