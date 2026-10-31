# Production control
<!-- id: controlar-produccion -->
<!-- origen: 896481a61950eef4c49c07d657fe3774c723113d -->

Specifies whether this computer monitors production.

## Possible values

* **Yes**. Digi3D.AI monitors production on this computer.
* **No**. Digi3D.AI does not monitor production on this computer.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\ProductionControl` |
| Table | `Ints` |
| Value | `ControlarProduccion` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\ProductionControl');
DELETE FROM Ints WHERE Value = 'ControlarProduccion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\ProductionControl');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ControlarProduccion', 1 FROM Keys WHERE Path = 'App\Configuration\ProductionControl';
```

</details>
