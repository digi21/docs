# Initial distance from camera to index
<!-- id: distancia-inicial-de-la-camara-al-indice -->
<!-- origen: 531c39b48658020723e3bf3862e59e2a62573fbe -->

Specifies the distance at which the camera is positioned relative to the cursor mark when selecting **Photogrammetric window/Go to point of origin**.

The default value is 10.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Doubles` |
| Value | `DistanciaCamaraIrPuntoOrigen` |
| Default value | 10.0 |

These SQL statements set the value 10.0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Doubles WHERE Value = 'DistanciaCamaraIrPuntoOrigen' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'DistanciaCamaraIrPuntoOrigen', 10.0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
