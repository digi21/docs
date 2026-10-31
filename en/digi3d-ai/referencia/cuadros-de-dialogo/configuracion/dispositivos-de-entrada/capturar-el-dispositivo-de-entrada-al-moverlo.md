# Capture the input device when moving it
<!-- id: capturar-el-dispositivo-de-entrada-al-moverlo -->
<!-- origen: baccd666ab62d0491c6781c95981a8f356ae2d25 -->

If enabled, moving the input device is enough to select it as the drawing window input device.

## Possible values

* **Yes**. Moving the input device automatically selects it in the drawing window.
* **No**. The input device is not selected merely by moving it.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\IO\TarjDigi3D` |
| Table | `Ints` |
| Value | `CapturarDispositivoEntradaAlMoverlo` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'CapturarDispositivoEntradaAlMoverlo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CapturarDispositivoEntradaAlMoverlo', 0 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
