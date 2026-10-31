# Size of tiles
<!-- id: tamano-de-las-teselas -->
<!-- origen: 790dc3fc4a12bf0f00be50fb44d46340de59c3b7 -->

Specifies the tile size for images that are not tiled, such as JPG images.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `TamanoTiles` |
| Default value | 256 |

These SQL statements set the value 256, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'TamanoTiles' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TamanoTiles', 256 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
