# Directorio de ayudas de códigos
<!-- id: directorio-de-ayudas-de-codigos -->

Indica el directorio donde se localizan los archivos _.htm_ (o _.html_) asociados a cada código del digi.tab.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Texts` |
| Valor | `DirectorioAyudasCodigos` |
| Valor por defecto | (vacío) |

Estas sentencias SQL asignan el texto `C:\AyudasCodigos`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'DirectorioAyudasCodigos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirectorioAyudasCodigos', 'C:\AyudasCodigos' FROM Keys WHERE Path = 'DigiNG\Configuration';
```
