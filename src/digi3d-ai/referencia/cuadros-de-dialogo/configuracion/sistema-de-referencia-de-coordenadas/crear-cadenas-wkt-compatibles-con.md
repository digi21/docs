# Crear cadenas WKT compatibles con
<!-- id: crear-cadenas-wkt-compatibles-con -->

Permite configurar el tipo de cadenas WKT que crea el programa al generar los sistemas de referencia de coordenadas.

## Valores posibles

* **OpenGis Coordinate Transformation Service**. Genera las cadenas WKT siguiendo la especificación OpenGIS Coordinate Transformation Service.
* **Esri Projection Engine sin código EPSG**. Genera las cadenas WKT compatibles con el motor de proyecciones de Esri, sin incluir el código EPSG.
* **Esri Projection Engine con código EPSG**. Genera las cadenas WKT compatibles con el motor de proyecciones de Esri, incluyendo el código EPSG.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `GenerarSistemasReferenciaCompatiblesEsriProjectionEngine` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarSistemasReferenciaCompatiblesEsriProjectionEngine' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarSistemasReferenciaCompatiblesEsriProjectionEngine', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
