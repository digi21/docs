# Memory use on request
<!-- id: consumo-de-memoria-bajo-demanda -->
<!-- origen: 5bdc4861cb3a16bf0d0281f06303f389396069ef -->

If enabled, memory is requested as the image loads. This may improve memory use but slow down fast model switching.

## Possible values

* **Yes**. Memory is requested on demand.
* **No**. Memory is allocated in advance.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `ConsumoMemoriabajoDemanda` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ConsumoMemoriabajoDemanda' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ConsumoMemoriabajoDemanda', 0 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
