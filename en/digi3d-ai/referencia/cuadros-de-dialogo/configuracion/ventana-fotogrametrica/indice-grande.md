# Large index
<!-- id: indice-grande -->
<!-- origen: f696739ed2c6e9b5d323f8785c42ac1990f46fd3 -->

Specifies the path of the PNG (Portable Network Graphics) image file containing the image displayed when the large cursor mark is selected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `RutaIndiceGrande` |
| Default value | (empty) |

These SQL statements set the text `C:\Indices\grande.png`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndiceGrande' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndiceGrande', 'C:\Indices\grande.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
