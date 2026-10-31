# Area unit
<!-- id: unidad-de-superficie -->
<!-- origen: fcc9ebf3b7a2cb21da2d971a7fc72b8a38c4b7c3 -->

Specify the unit in which [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md) writes the selected entity's area, and the suggested text suffix.

Calculate the area in square meters and convert it to the selected unit. Change the suggested suffix before placing text, but the value always remains in the selected unit.

Changes apply the next time the command runs.

## Possible values

* **Square meters (m2)** \(default\). Suggested suffix: `m2`.
* **Hectares (ha)**. Divide area by 10,000. Suggested suffix: `ha`.
* **Square kilometers (km2)**. Divide area by 1,000,000. Suggested suffix: `km2`.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `UnidadArea` |
| Default value | 0 |

Values are 0 (square meters), 1 (hectares), and 2 (square kilometers). These SQL statements set the value to 1, whether or not the row exists. Run them in [Advanced configuration](../../configuracion-avanzada.md):

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'UnidadArea' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UnidadArea', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
