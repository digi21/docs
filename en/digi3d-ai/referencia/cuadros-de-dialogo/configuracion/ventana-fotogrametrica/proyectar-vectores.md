# Project vectors
<!-- id: proyectar-vectores -->
<!-- origen: f3ec7f6c8c9d0b7917aeeec651de593a9f9f8851 -->

Specifies whether vectors are projected in the stereoscopic camera synchronously or asynchronously.

## Possible values

* **Synchronous**. Vectors are projected synchronously.
* **Asynchronous**. Vectors are projected asynchronously.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `ProyectarVectoresSíncrono` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ProyectarVectoresSíncrono' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarVectoresSíncrono', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
