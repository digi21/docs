# Zoom factor
<!-- id: factor-de-zoom-2 -->
<!-- origen: 70112d46aa11ab4ee8e75041d2012f74ce6c34e3 -->

Specifies the zoom factor applied when running zoom in and zoom out commands in a point cloud. This is a positive value greater than 1.0.

The default value is 1.2.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Doubles` |
| Value | `FactorZoom` |
| Default value | 1.2 |

These SQL statements set the value 1.2, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Doubles WHERE Value = 'FactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'FactorZoom', 1.2 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
