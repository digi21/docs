# Thread priority
<!-- id: prioridad-del-hilo -->
<!-- origen: 28c9f0a2f5c59d14b7311f859d9b6ac9868b5d52 -->

Specifies the priority of the worker thread communicating with encoders in the background. A higher priority improves input device response but uses more computer resources.

## Possible values

* **Minimum**.
* **Below normal**.
* **Normal**.
* **Above normal**.
* **Highest**.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\IO\TarjDigi3D` |
| Table | `Ints` |
| Value | `Prioridad` |
| Default value | 2 |

These SQL statements set the value 2, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'Prioridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Prioridad', 2 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
