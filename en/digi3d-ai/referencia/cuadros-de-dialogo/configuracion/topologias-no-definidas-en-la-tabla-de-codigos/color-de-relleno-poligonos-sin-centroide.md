# Fill color (polygons without centroid)
<!-- id: color-de-relleno-poligonos-sin-centroide -->
<!-- origen: a72081dab9d020ff4255cd4dd5214af680885369 -->

Specifies the fill color for polygons that **do not have** a centroid in topologies not defined in the code table (such as those created with BINTOP or CREAR_TOPOLOGIA_CODIGOS_VISIBLES).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Texts` |
| Value | `RellenoPoligonosSinCentroide` |
| Default value | `255 00 00` |

These SQL statements set the text `255 00 00`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'RellenoPoligonosSinCentroide' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RellenoPoligonosSinCentroide', '255 00 00' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
