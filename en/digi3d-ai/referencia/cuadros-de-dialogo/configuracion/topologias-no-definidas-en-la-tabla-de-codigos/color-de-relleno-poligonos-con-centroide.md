# Fill color (polygons with centroid)
<!-- id: color-de-relleno-poligonos-con-centroide -->
<!-- origen: 15deea324a60fe6eb388298c4affbc1840aca33d -->

Specifies the fill color for polygons that **have** a centroid in topologies not defined in the code table (such as those created with BINTOP or CREAR_TOPOLOGIA_CODIGOS_VISIBLES).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Texts` |
| Value | `RellenoPoligonosConCentroide` |
| Default value | `00 255 00` |

These SQL statements set the text `00 255 00`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'RellenoPoligonosConCentroide' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RellenoPoligonosConCentroide', '00 255 00' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
