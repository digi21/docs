# Preguntar por capas al cargar
<!-- id: preguntar-por-capas-al-cargar -->

Si se habilita, se muestra un cuadro de diálogo que permite seleccionar las capas a cargar cuando el archivo GeoPackage tiene al menos una capa con geometrías, también si solo tiene una.

## Valores posibles

* **Sí**. Se pregunta por las capas a cargar.
* **No**. Se cargan todas las capas sin preguntar.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.GeoPackage` |
| Tabla | `Ints` |
| Valor | `PreguntarPorCapasACargar` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.GeoPackage');
DELETE FROM Ints WHERE Value = 'PreguntarPorCapasACargar' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.GeoPackage');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PreguntarPorCapasACargar', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.GeoPackage';
```
