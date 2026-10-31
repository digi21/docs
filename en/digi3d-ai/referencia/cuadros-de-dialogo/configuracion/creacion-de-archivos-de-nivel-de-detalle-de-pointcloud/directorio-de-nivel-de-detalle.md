# Level Of Detail directory
<!-- id: directorio-de-nivel-de-detalle -->
<!-- origen: d065fa817d7d3aa947204e2eec254ae69a01f47c -->

Specifies the directory path where level of detail files are stored.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Texts` |
| Value | `DirectorioLod` |
| Default value | temporary folder |

These SQL statements set the text `D:\NivelesDeDetalle`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Texts WHERE Value = 'DirectorioLod' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirectorioLod', 'D:\NivelesDeDetalle' FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
