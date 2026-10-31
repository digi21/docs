# Detect lines with double points
<!-- id: detectar-lineas-con-puntos-dobles -->
<!-- origen: 3b075606bb1835a332cf6d9c8db1a15fdb8e8ad0 -->

Specifies whether a task is added to the [tasks pane](../../../paneles/tareas.md) for each line with duplicate points found when building the topology.

## Possible values

* **Yes** \(default\). A task is added for each line with duplicate points.
* **No**. Lines with duplicate points do not generate tasks.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Table | `Ints` |
| Value | `LineasConPuntosDobles` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Ints WHERE Value = 'LineasConPuntosDobles' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'LineasConPuntosDobles', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```

</details>
