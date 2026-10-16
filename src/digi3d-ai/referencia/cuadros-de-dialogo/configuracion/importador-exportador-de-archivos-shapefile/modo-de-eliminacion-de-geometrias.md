# Modo de eliminación de geometrías
<!-- id: modo-de-eliminacion-de-geometrias -->

Indica cómo se especifica en el Shapefile que una geometría está eliminada.

## Valores posibles

* **Almacenando un valor en un campo en el archivo DBF**. La eliminación se marca guardando un valor en un campo del archivo DBF.
* **Marcando como eliminado el registro en el archivo DBF**. La eliminación se marca poniendo como eliminado el registro del archivo DBF.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Shp` |
| Tabla | `Ints` |
| Valor | `EliminarAlmacenandoValorEnCampo` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Ints WHERE Value = 'EliminarAlmacenandoValorEnCampo' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'EliminarAlmacenandoValorEnCampo', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```
