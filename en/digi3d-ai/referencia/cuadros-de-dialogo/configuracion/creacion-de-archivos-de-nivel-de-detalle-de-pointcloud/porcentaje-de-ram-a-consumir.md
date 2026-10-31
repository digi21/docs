# Percentage of RAM to be consumed
<!-- id: porcentaje-de-ram-a-consumir -->
<!-- origen: 4a2b0ee82c1a2cc875a20a9eeabbfb7ec20900b4 -->

Specifies the maximum percentage of total computer random access memory (RAM) that the level of detail file creation algorithm can use.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Table | `Ints` |
| Value | `PorcentajeMaximoConsumoMemoriaCrearLod` |
| Default value | 90 |

These SQL statements set the value 90, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'PorcentajeMaximoConsumoMemoriaCrearLod' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PorcentajeMaximoConsumoMemoriaCrearLod', 90 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
