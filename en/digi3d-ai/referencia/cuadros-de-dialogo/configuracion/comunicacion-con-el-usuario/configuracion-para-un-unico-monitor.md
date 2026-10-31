# One monitor configuration
<!-- id: configuracion-para-un-unico-monitor -->
<!-- origen: decf8bb9ca7531626b28eaabf2779b1870a374a4 -->

Specifies whether you use the program with one monitor or several.

With one monitor, photogrammetric windows open inside the main program frame. With several monitors, the photogrammetric window opens as an independent application, so you can move it to another monitor.

## Possible values

* **Yes**. Digi3D.AI opens photogrammetric windows inside the main application frame.
* **No**. Digi3D.AI opens photogrammetric windows as an independent application.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `FullMDI3D` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'FullMDI3D' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FullMDI3D', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
