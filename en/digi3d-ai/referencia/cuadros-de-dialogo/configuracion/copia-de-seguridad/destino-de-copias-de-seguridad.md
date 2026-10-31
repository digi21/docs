# Destination for backup copies
<!-- id: destino-de-copias-de-seguridad -->
<!-- origen: 58d78d49c45f6f4bc2f31a456fe225c3b871e04e -->

Configures the path and name of the file generated whenever a backup is created.

This field supports [macros](../../../macros.md), so each backup can be stored in a different file if you include a value that changes over time, such as the time, in the name.

For example, to create backups in the same directory as the drawing file, with a name in the form **Backup of (file name) dated (current date) at (current time).(file extension)**, enter this value:

```
$(RutaArchivoDibujo)Copia de seguridad de $(NombreArchivoDibujo) con fecha $(FechaSubrayados) a las $(HoraCompletaSubrayados)$(ExtensionArchivoDibujo)
```

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Texts` |
| Value | `DestinoCopiasSeguridad` |
| Default value | `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)` |

These SQL statements set the text `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'DestinoCopiasSeguridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DestinoCopiasSeguridad', '$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
