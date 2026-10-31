# Allow consecutive vertices with the same XY coordinate
<!-- id: permitir-vertices-consecutivos-con-la-misma-coordenada-xy -->
<!-- origen: dcff0a32962d6c59c8893615cd35c9fbb030fef6 -->

If enabled, consecutive duplicate vertex filtering tools allow consecutive vertices with the same X and Y coordinates but a different Z coordinate.

## Possible values

* **Yes**. Consecutive vertices with the same X and Y coordinates and a different Z coordinate are allowed.
* **No**. Consecutive vertices with the same X and Y coordinates are filtered.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `FiltrarPuntosPara2D` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'FiltrarPuntosPara2D' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FiltrarPuntosPara2D', 0 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
