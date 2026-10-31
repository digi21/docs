# Small index
<!-- id: indice-pequeno -->
<!-- origen: 6117b96c47052e9730b14ade705d40c9bb41345b -->

Specifies the path of the PNG (Portable Network Graphics) image file containing the image displayed when the small cursor mark is selected.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Texts` |
| Value | `RutaIndicePequeño` |
| Default value | (empty) |

These SQL statements set the text `C:\Indices\pequeno.png`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndicePequeño' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndicePequeño', 'C:\Indices\pequeno.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
