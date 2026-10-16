# Puerto
<!-- id: puerto -->

Permite indicar el puerto en el que se creará el servidor de archivos de referencia.

Solo se utiliza cuando la opción [Crear servidor](crear-servidor.md) está configurada como **Sí**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `PuertoServidorArchivosReferencia` |
| Valor por defecto | 4456 |

Estas sentencias SQL asignan el valor 4456, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'PuertoServidorArchivosReferencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PuertoServidorArchivosReferencia', 4456 FROM Keys WHERE Path = 'App\Configuration';
```
