# Project only geometries that overlap the model (BETA)
<!-- id: proyectar-solo-geometrias-que-solapan-con-modelo -->
<!-- origen: 7eb0f671cacb5a73867f449c0b7e97ff67fce923 -->

If enabled, only geometries overlapping the photogrammetric model extents are projected.

## Possible values

* **Yes**. Only geometries overlapping the model are projected.
* **No**. All geometries are projected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `ProyectarSoloVectoresQueSolapanConModelo` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ProyectarSoloVectoresQueSolapanConModelo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarSoloVectoresQueSolapanConModelo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
