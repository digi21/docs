# Altimetric accuracy of the ground control points
<!-- id: precision-altimetrica-del-apoyo -->
<!-- origen: fc543bae4dfb0de9301fe37f068494949d3bb93b -->

Specifies the altimetric accuracy of ground control points, in meters.

The default value is 0.5.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Table | `Doubles` |
| Value | `PrecisionAltimetricaApoyo` |
| Default value | 0.5 |

These SQL statements set the value 0.5, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionAltimetricaApoyo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionAltimetricaApoyo', 0.5 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
