# Medium index
<!-- id: indice-mediano -->
<!-- origen: 64c7b02b0ab4de4121bc6e1f092ba2d63fc19c13 -->

Specifies the path of the PNG (Portable Network Graphics) image file containing the image displayed when the medium cursor mark is selected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `RutaIndiceMediano` |
| Default value | (empty) |

These SQL statements set the text `C:\Indices\mediano.png`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndiceMediano' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndiceMediano', 'C:\Indices\mediano.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
