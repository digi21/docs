# Y
<!-- id: y -->

Nombre del campo con la coordenada Y del centro de proyección.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access` |
| Tabla | `Texts` |
| Valor | `y` |
| Valor por defecto | `YL` |

Estas sentencias SQL asignan el texto `YL`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
DELETE FROM Texts WHERE Value = 'y' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'y', 'YL' FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access';
```
