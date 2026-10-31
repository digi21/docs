# Centroid comparison criteria
<!-- id: criterio-de-comparacion-de-centroides -->
<!-- origen: 6e9706abfcc712cab8ccedb6befa497c9e57c698 -->

Specifies the criterion used by the [TOPOLOGICAL\_CONTROL\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md) command to compare neighboring polygon centroids.

## Possible values

* **The centroid text** \(default\). Centroid texts are compared.
* **The centroid code \(and attributes\)**. Centroid codes and attributes are compared.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico` |
| Table | `Ints` |
| Value | `ControlTopologicoTextoCentroide` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico');
DELETE FROM Ints WHERE Value = 'ControlTopologicoTextoCentroide' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ControlTopologicoTextoCentroide', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico';
```

</details>
