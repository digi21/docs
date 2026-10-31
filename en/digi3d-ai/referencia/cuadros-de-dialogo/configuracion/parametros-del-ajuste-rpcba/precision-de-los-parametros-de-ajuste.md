# Accuracy of the adjustment parameters
<!-- id: precision-de-los-parametros-de-ajuste -->
<!-- origen: 3a779104e4c5d7c17fe64ec83f1a2348a7f32812 -->

Specifies the a priori accuracy of adjustment parameters.

The default value is 20.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Table | `Doubles` |
| Value | `PrecisionParametrosAjuste` |
| Default value | 20.0 |

These SQL statements set the value 20.0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionParametrosAjuste' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionParametrosAjuste', 20.0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
