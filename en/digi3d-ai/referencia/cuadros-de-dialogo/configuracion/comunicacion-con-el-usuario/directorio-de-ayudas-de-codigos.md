# Code help directory
<!-- id: directorio-de-ayudas-de-codigos -->
<!-- origen: 0f23faed269aba7d3de3a2205956201fdf46be92 -->

Specifies the directory containing _.htm_ (or _.html_) files associated with each digi.tab code.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Texts` |
| Value | `DirectorioAyudasCodigos` |
| Default value | (empty) |

These SQL statements set the text `C:\AyudasCodigos`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'DirectorioAyudasCodigos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirectorioAyudasCodigos', 'C:\AyudasCodigos' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
