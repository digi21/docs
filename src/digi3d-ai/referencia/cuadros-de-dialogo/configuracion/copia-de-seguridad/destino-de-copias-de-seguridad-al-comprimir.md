# Destino de copias de seguridad al comprimir
<!-- id: destino-de-copias-de-seguridad-al-comprimir -->

Configura la ruta y el nombre del archivo que se genera cuando se realiza una copia de seguridad automáticamente al ejecutar la orden _COMPRIMIR_.

Al igual que [Destino de copias de seguridad](destino-de-copias-de-seguridad.md), este campo admite [macros](../../../macros.md).

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Texts` |
| Valor | `DestinoCopiasSeguridadAlComprimir` |
| Valor por defecto | `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)` |

Estas sentencias SQL asignan el texto `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'DestinoCopiasSeguridadAlComprimir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DestinoCopiasSeguridadAlComprimir', '$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
