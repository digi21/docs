# Filtering distance
<!-- id: distancia-de-filtrado -->
<!-- origen: 38fdcaabd4fec48b5ae6bcd7b21d051e1f29563b -->

Specifies the Z difference from the tile average Z at which a DTM point is filtered.

Only used if [Filter DTM](filtrar-mdt.md) is enabled. The default value is 100.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Table | `Doubles` |
| Value | `DistanciaFiltrado` |
| Default value | 100 |

These SQL statements set the value 100, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Doubles WHERE Value = 'DistanciaFiltrado' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'DistanciaFiltrado', 100 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```

</details>
