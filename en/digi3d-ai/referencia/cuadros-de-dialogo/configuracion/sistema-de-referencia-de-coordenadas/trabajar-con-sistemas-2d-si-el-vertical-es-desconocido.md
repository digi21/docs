# Work with 2D (horizontal) systems if the vertical is unknown
<!-- id: trabajar-con-sistemas-2d-si-el-vertical-es-desconocido -->
<!-- origen: ce7147cd46fac911951b30882403af3311734c42 -->

If enabled and you create a coordinate reference system with an unknown vertical system, Digi3D.AI creates a two-dimensional (2D) system instead of a compound system. With this option enabled, loading a 2D system makes Digi3D.AI assume the vertical reference system is unknown, without asking for it.

## Possible values

* **Yes**. 2D systems are used when the vertical system is unknown.
* **No**. A compound system is created and the vertical system is requested.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
