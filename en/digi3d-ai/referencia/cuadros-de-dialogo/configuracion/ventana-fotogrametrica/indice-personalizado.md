# Customized index
<!-- id: indice-personalizado -->
<!-- origen: 2d700bc992affeef9e6c73376a7cd728e06c9d7c -->

Specifies the path of the PNG (Portable Network Graphics) image file containing the image displayed when the custom cursor mark is selected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `RutaIndicePersonalizado` |
| Default value | (empty) |

These SQL statements set the text `C:\Indices\personalizado.png`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndicePersonalizado' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndicePersonalizado', 'C:\Indices\personalizado.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
