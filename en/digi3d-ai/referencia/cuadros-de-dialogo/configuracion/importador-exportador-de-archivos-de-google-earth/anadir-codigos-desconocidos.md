# Add unknown codes
<!-- id: anadir-codigos-desconocidos-8 -->
<!-- origen: 5fa7774e005323ac7a801ff7b4208602864dd7a8 -->

Specifies whether codes of entities for which no transformation code was found are added to the active code table.

## Possible values

* **Yes**. Codes of entities for which no transformation code was found are added to the active code table.
* **No**. Codes of entities for which no transformation code was found are not added to the code table.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Kml` |
| Table | `Ints` |
| Value | `AñadirCódigosDesconocidos` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Kml');
DELETE FROM Ints WHERE Value = 'AñadirCódigosDesconocidos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Kml');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AñadirCódigosDesconocidos', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Kml';
```

</details>
