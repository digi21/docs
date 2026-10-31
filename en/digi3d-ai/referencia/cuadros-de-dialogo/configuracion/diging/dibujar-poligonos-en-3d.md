# Draw polygons in 3D
<!-- id: dibujar-poligonos-en-3d -->
<!-- origen: 8e9a2ab11136ce24702550fe7dac8e3f81932d6b -->

If enabled, polygons are drawn with a Z coordinate. If a polygon has very large Z differences, it may not be displayed correctly.

## Possible values

* **Yes**. Polygons are drawn with a Z coordinate.
* **No**. Polygons are drawn in 2D.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `DibujarPoligonos3D` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'DibujarPoligonos3D' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'DibujarPoligonos3D', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
