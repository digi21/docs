# Detect duplicate centroids
<!-- id: detectar-centroides-duplicados -->
<!-- origen: 7935934a67ac53d2008ffa1f2873150e6d2e4ee2 -->

Specifies whether a task is added to the [tasks pane](../../../paneles/tareas.md) for each duplicate centroid found when building the topology.

## Possible values

* **Yes** \(default\). A task is added for each duplicate centroid.
* **No**. Duplicate centroids do not generate tasks.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Table | `Ints` |
| Value | `CentroidesDuplicados` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Ints WHERE Value = 'CentroidesDuplicados' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CentroidesDuplicados', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```

</details>
