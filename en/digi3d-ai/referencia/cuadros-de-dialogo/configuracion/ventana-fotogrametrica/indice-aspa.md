# X index
<!-- id: indice-aspa -->
<!-- origen: e751fd649bb943778d609d7632a54fc4d19550d9 -->

Specifies the path of the PNG (Portable Network Graphics) image file containing the image displayed when the X-shaped cursor mark is selected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `RutaIndiceAspa` |
| Default value | (empty) |

These SQL statements set the text `C:\Indices\aspa.png`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndiceAspa' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndiceAspa', 'C:\Indices\aspa.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
