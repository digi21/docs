# Python Home directory
<!-- id: directorio-home-de-python -->
<!-- origen: ead177b370342abaafcc3c2ac7a539252b75236e -->

Specifies the directory in which Digi3D.AI locates Python libraries.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Texts` |
| Value | `DirectorioPythonDigi3DAI` |
| Default value | executable folder |

These SQL statements set the text `C:\Python\Digi3D`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'DirectorioPythonDigi3DAI' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirectorioPythonDigi3DAI', 'C:\Python\Digi3D' FROM Keys WHERE Path = 'App\Configuration';
```

</details>
