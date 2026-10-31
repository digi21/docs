# Pixel origin
<!-- id: origen-del-pixel -->
<!-- origen: 4b276f91aaf6450dbf658bd2d1d29021d2b2caa3 -->

Specifies the pixel origin in the photogrammetric window.

## Possible values

* **Pixel center**. The pixel origin is at its center.
* **Top left corner of pixel**. The pixel origin is at its top left corner.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `OrigenPixelCentroPixel` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'OrigenPixelCentroPixel' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OrigenPixelCentroPixel', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
