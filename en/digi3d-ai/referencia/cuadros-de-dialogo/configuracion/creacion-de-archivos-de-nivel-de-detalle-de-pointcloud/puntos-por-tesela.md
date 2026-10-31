# Points per tile
<!-- id: puntos-por-tesela -->
<!-- origen: 69c200b166f04b1ba0a020ce44ba0715faf3c545 -->

Specifies the number of points to store in each tile of the level of detail files.

Each tile is drawn with a vertex buffer \(VBO\) and a draw call, whose cost is fixed regardless of the number of points. Tiles containing few points multiply draw calls and saturate the graphics card driver. The root node size is calculated from the cloud shape to approximate this number.

The default value is 16000.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Ints` |
| Value | `PuntosPorNodo` |
| Default value | 16000 |

These SQL statements set the value 16000, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'PuntosPorNodo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PuntosPorNodo', 16000 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
