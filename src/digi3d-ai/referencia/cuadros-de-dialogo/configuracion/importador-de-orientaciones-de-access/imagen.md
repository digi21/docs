# Imagen
<!-- id: imagen -->

Nombre del campo que contiene el nombre de la imagen.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access` |
| Tabla | `Texts` |
| Valor | `Archivo` |
| Valor por defecto | `FICHERO` |

Estas sentencias SQL asignan el texto `FICHERO`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
DELETE FROM Texts WHERE Value = 'Archivo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'Archivo', 'FICHERO' FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access';
```
