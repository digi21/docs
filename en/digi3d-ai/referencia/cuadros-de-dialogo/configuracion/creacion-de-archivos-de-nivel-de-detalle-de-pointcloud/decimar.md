# Decimate
<!-- id: decimar -->
<!-- origen: 7acd9640df0cc38dd672b24dfdb5f913aa985287 -->

Allows loading only part of the cloud points. Enter **0** to load all points; enter **X** to import one point in every X points (for example, entering 100 loads one point in every 100 points).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Ints` |
| Value | `Decimar` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'Decimar' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Decimar', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
