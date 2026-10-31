# Centroid text for recesses
<!-- id: texto-de-centroide-para-huecos -->
<!-- origen: 8da2207ae6a9178ab204e2bf95666d502e6bd54d -->

Specifies the texts which, when found in a polygon centroid, cause that polygon to be considered a hole in topologies not defined in the code table (such as those created with BINTOP or CREAR_TOPOLOGIA_CODIGOS_VISIBLES).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Texts` |
| Value | `TextoCentroidesHuecos` |
| Default value | `*` |

These SQL statements set the text `*`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'TextoCentroidesHuecos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'TextoCentroidesHuecos', '*' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
