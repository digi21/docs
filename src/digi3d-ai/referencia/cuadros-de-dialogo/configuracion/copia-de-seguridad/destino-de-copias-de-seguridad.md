# Destino de copias de seguridad
<!-- id: destino-de-copias-de-seguridad -->

Configura la ruta y el nombre del archivo que se genera cada vez que se realiza una copia de seguridad.

Este campo admite [macros](../../../macros.md), de manera que puedes hacer que cada copia de seguridad se almacene en un archivo distinto si incorporas en el nombre algún valor que cambie con el tiempo, como la hora.

Por ejemplo, si quieres que las copias de seguridad se generen en el mismo directorio que el archivo de dibujo, con el nombre **Copia de seguridad de (nombre del archivo) con fecha (fecha actual) a las (hora actual).(extensión del archivo)**, introduce este valor:

```
$(RutaArchivoDibujo)Copia de seguridad de $(NombreArchivoDibujo) con fecha $(FechaSubrayados) a las $(HoraCompletaSubrayados)$(ExtensionArchivoDibujo)
```

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Texts` |
| Valor | `DestinoCopiasSeguridad` |
| Valor por defecto | `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)` |

Estas sentencias SQL asignan el texto `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'DestinoCopiasSeguridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DestinoCopiasSeguridad', '$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)' FROM Keys WHERE Path = 'DigiNG\Configuration';
```
