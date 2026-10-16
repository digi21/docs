# Puerto serie
<!-- id: puerto-serie -->

Indica el puerto serie por el cual se enviará la información.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\ComunicacionExterior` |
| Tabla | `Ints` |
| Valor | `PuertoSerieComunicacionExterior` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'PuertoSerieComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PuertoSerieComunicacionExterior', 0 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```
