# Image display mode
<!-- id: modo-de-presentacion-de-imagenes -->
<!-- origen: da43eef2ebe12656d4363a5adf0b9cdccf8bcd90 -->

Specifies how images are displayed.

## Possible values

* **Project** (default). Images are displayed projected.
* **Orthogonal**. Images are displayed orthogonally.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Extensiones\Digi3D.ConicSensor` |
| Table | `Ints` |
| Value | `ProyectarImagenes3` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor');
DELETE FROM Ints WHERE Value = 'ProyectarImagenes3' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarImagenes3', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor';
```

</details>
