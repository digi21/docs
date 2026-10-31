# Benchmark mode
<!-- id: modo-benchmark -->
<!-- origen: 67fd491d121db149f27a9e99bf25a68010182a22 -->

Specifies whether the Digi3D.AI stereoscopic view redraws continuously, even when no event is received. This is useful for measuring performance.

## Possible values

* **Yes**. The view redraws continuously.
* **No**. The view redraws only when necessary.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `ModoBenchmark` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ModoBenchmark' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ModoBenchmark', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
