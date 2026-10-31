# Resolution
<!-- id: resolucion -->
<!-- origen: 69f3533dc1b2464c9b27f1820156dbd6d56f77c2 -->

Specifies the resolution to select for the [specified monitor](monitor-a-cambiar-la-resolucion.md).

## Possible values

One of the resolutions supported by the selected monitor.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `Resolucion` |
| Default value | `640 x 480 x 32` |

These SQL statements set the text `1920 x 1080 x 32`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'Resolucion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'Resolucion', '1920 x 1080 x 32' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
