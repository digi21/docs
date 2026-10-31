# Minimum number of points
<!-- id: minimo-de-puntos -->
<!-- origen: 88d7e49d381950370ba882f9b344b8da31b12dbb -->

Specifies the minimum number of vertices in an arc.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `MinPuntosArco` |
| Default value | 20 |

These SQL statements set the value 20, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MinPuntosArco' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MinPuntosArco', 20 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
