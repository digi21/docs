# Destination for backup copies when compressing
<!-- id: destino-de-copias-de-seguridad-al-comprimir -->
<!-- origen: 336ba778affea2617b170f05a1e20fedbf1ffbcb -->

Configures the path and name of the file generated when a backup is automatically created by running _COMPRESS_.

Like [Backup destination](destino-de-copias-de-seguridad.md), this field supports [macros](../../../macros.md).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Texts` |
| Value | `DestinoCopiasSeguridadAlComprimir` |
| Default value | `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)` |

These SQL statements set the text `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'DestinoCopiasSeguridadAlComprimir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DestinoCopiasSeguridadAlComprimir', '$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
