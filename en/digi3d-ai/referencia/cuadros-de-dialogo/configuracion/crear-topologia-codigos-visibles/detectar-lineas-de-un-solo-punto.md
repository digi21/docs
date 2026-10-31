# Detect single point lines
<!-- id: detectar-lineas-de-un-solo-punto -->
<!-- origen: 4695d73b78e8ba218a98416c6f52f9ba336b1e36 -->

Specifies whether a task is added to the [tasks pane](../../../paneles/tareas.md) for each line with a single point found when building the topology.

## Possible values

* **Yes** \(default\). A task is added for each line with a single point.
* **No**. Lines with a single point do not generate tasks.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Table | `Ints` |
| Value | `LineasDeUnSoloPunto` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Ints WHERE Value = 'LineasDeUnSoloPunto' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'LineasDeUnSoloPunto', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```

</details>
