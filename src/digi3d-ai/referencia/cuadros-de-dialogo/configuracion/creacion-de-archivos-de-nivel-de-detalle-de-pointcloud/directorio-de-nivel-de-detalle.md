# Directorio de Nivel de Detalle
<!-- id: directorio-de-nivel-de-detalle -->

Indica la ruta donde se almacenarán los archivos de nivel de detalle.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Tabla | `Texts` |
| Valor | `DirectorioLod` |
| Valor por defecto | carpeta temporal |

Estas sentencias SQL asignan el texto `D:\NivelesDeDetalle`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Texts WHERE Value = 'DirectorioLod' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirectorioLod', 'D:\NivelesDeDetalle' FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```
