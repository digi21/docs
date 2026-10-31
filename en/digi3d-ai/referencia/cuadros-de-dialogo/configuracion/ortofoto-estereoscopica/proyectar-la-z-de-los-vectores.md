# Project the Z of the vectors
<!-- id: proyectar-la-z-de-los-vectores -->
<!-- origen: c0b1da0f7896e3e12aaa8aebddb1d3480f104928 -->

Specifies whether vector Z coordinates are always projected in the photogrammetric window. This allows stereoscopic work with 2D models.

## Possible values

* **Yes**. Vectors are projected with their Z coordinate.
* **No** \(default\). Vectors are not always projected with their Z coordinate.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Table | `Ints` |
| Value | `ProyectarZVectores` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Ints WHERE Value = 'ProyectarZVectores' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarZVectores', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```

</details>
