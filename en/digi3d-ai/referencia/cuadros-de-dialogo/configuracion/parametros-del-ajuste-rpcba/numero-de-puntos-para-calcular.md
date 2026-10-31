# Number of points to calculate
<!-- id: numero-de-puntos-para-calcular -->
<!-- origen: b7985de42eee99e25266339d0c7a4ae7aa487246 -->

Specifies the minimum number of points measured in the left image required to calculate the adjustment. With fewer measured points, it is not calculated.

The default value is 1.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Table | `Ints` |
| Value | `NumeroPuntosMedidosParaCalcularRpcba` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Ints WHERE Value = 'NumeroPuntosMedidosParaCalcularRpcba' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'NumeroPuntosMedidosParaCalcularRpcba', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
