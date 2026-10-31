# Change resolution
<!-- id: cambiar-resolucion -->
<!-- origen: 0daef2a7c7a2f3e6db5b872de2b5a492edb0536e -->

Specifies whether monitor resolution changes when loading a stereoscopic view.

## Possible values

* **Yes**. Monitor resolution changes when opening the stereoscopic view.
* **No**. Monitor resolution does not change.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `CambiarResolucion` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'CambiarResolucion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CambiarResolucion', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
