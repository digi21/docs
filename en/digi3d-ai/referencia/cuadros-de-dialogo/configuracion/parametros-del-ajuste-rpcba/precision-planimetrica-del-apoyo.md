# Planimetric accuracy of the ground control points
<!-- id: precision-planimetrica-del-apoyo -->
<!-- origen: 976799a75a465ac3292e3882aea5d75e45165065 -->

Specifies the planimetric accuracy of ground control points, in user measurement units. Before adjustment, Digi3D.AI converts it to the units of the sensor coordinate reference system.

The default value is 0.1.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Table | `Doubles` |
| Value | `PrecisionPlanimetricaApoyo` |
| Default value | 0.1 |

These SQL statements set the value 0.1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionPlanimetricaApoyo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionPlanimetricaApoyo', 0.1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
