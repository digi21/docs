# Pedal response time
<!-- id: tiempo-de-espera-para-pedales -->
<!-- origen: 225e7df84fc45625ef351f91af653017c498346f -->

Specifies the time, in milliseconds, during which all pedal information is ignored after a pedal event. This prevents noise in analog pedals.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\IO\TarjDigi3D` |
| Table | `Ints` |
| Value | `TiempoEspera` |
| Default value | 100 |

These SQL statements set the value 100, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'TiempoEspera' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TiempoEspera', 100 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
