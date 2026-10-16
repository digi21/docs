# Campo en el que almacenar marca de eliminado
<!-- id: campo-en-el-que-almacenar-marca-de-eliminado -->

Indica el nombre del campo del archivo DBF en el que se almacena el valor que marca una geometría como eliminada.

Solo se utiliza si en [Modo de eliminación de geometrías](modo-de-eliminacion-de-geometrias.md) has seleccionado **Almacenando un valor en un campo en el archivo DBF**.

Por defecto está vacío.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Shp` |
| Tabla | `Texts` |
| Valor | `CampoEliminado` |
| Valor por defecto | (vacío) |

Estas sentencias SQL asignan el texto `ELIMINADO`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Texts WHERE Value = 'CampoEliminado' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'CampoEliminado', 'ELIMINADO' FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```
