# Filter DTM
<!-- id: filtrar-mdt -->
<!-- origen: 919a03f11b02aad4f48b7f9eb83545451b31ca8a -->

Specifies whether digital terrain model points in each tile are filtered. The filter calculates the tile average Z and replaces the Z of points that deviate from it by at least the [Filtering distance](distancia-de-filtrado.md) with that average.

## Possible values

* **Yes**. DTM points are filtered.
* **No** \(default\). DTM points are not filtered.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Table | `Ints` |
| Value | `FiltrarMdt` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Ints WHERE Value = 'FiltrarMdt' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FiltrarMdt', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```

</details>
