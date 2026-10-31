# Double click milliseconds
<!-- id: milisegundos-doble-clic -->
<!-- origen: 0e752d2fbf9a3c27ad5a08abee7f09bf3d47b176 -->

Two presses of the Data button are considered a double-click if the interval between them is shorter than the specified time, in milliseconds.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\IO\TarjDigi3D` |
| Table | `Ints` |
| Value | `MilisegundosDobleClic` |
| Default value | 200 |

These SQL statements set the value 200, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'MilisegundosDobleClic' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MilisegundosDobleClic', 200 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
