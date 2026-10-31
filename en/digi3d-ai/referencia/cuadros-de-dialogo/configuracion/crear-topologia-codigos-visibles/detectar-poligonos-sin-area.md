# Detect polygons without area
<!-- id: detectar-poligonos-sin-area -->
<!-- origen: 03ee48be5cb2a505b4e04bc257e3de5fe3b86eb2 -->

Specifies whether a task is added to the [tasks pane](../../../paneles/tareas.md) for each polygon with no area found when building the topology.

## Possible values

* **Yes** \(default\). A task is added for each polygon with no area.
* **No**. Polygons with no area do not generate tasks.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Table | `Ints` |
| Value | `PoligonosSinArea` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Ints WHERE Value = 'PoligonosSinArea' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PoligonosSinArea', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```

</details>
