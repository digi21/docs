# Initial camera angle
<!-- id: angulo-inicial-de-la-camara -->
<!-- origen: 158b8ef798e1700a0166a46941d906d4a4770f23 -->

Specifies the side from which the camera looks when selecting **Photogrammetric window/Go to point of origin**.

## Possible values

* **Top** \(default\).
* **Bottom**.
* **Left**.
* **Right**.
* **Front**.
* **Back**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Ints` |
| Value | `AnguloCamaraIrPuntoOrigen` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'AnguloCamaraIrPuntoOrigen' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AnguloCamaraIrPuntoOrigen', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
