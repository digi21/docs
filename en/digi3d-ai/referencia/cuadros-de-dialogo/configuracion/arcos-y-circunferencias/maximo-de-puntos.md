# Maximum number of points
<!-- id: maximo-de-puntos -->
<!-- origen: 4087f2029f09e8e99b71adf9e4182ed4b136a432 -->

Specifies the maximum number of vertices in an arc.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `MaxPuntosArco` |
| Default value | 200 |

These SQL statements set the value 200, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MaxPuntosArco' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MaxPuntosArco', 200 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
