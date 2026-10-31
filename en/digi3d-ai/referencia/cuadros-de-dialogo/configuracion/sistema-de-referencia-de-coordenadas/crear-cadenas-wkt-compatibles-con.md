# Create WKT strings compatible with
<!-- id: crear-cadenas-wkt-compatibles-con -->
<!-- origen: 632c5b15ec465b34c7ee327e182dffbd6ebb6216 -->

Configures the type of WKT strings created by the program when generating coordinate reference systems.

## Possible values

* **OpenGis Coordinate Transformation Service**. Generates WKT strings following the OpenGIS Coordinate Transformation Service specification.
* **Esri Projection Engine without EPSG code**. Generates WKT strings compatible with the Esri projection engine, without including the EPSG code.
* **Esri Projection Engine with EPSG code**. Generates WKT strings compatible with the Esri projection engine, including the EPSG code.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `GenerarSistemasReferenciaCompatiblesEsriProjectionEngine` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarSistemasReferenciaCompatiblesEsriProjectionEngine' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarSistemasReferenciaCompatiblesEsriProjectionEngine', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
