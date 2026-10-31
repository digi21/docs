# Index cross
<!-- id: indice-cruz -->
<!-- origen: d4498ded30a6b0b9adfdefd9060056a579babc72 -->

Specifies the path of the PNG (Portable Network Graphics) image file containing the image displayed when the cross-shaped cursor mark is selected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `RutaIndiceCruz` |
| Default value | (empty) |

These SQL statements set the text `C:\Indices\cruz.png`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndiceCruz' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndiceCruz', 'C:\Indices\cruz.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
