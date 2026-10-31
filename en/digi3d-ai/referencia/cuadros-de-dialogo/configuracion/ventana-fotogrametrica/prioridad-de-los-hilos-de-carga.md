# Thread priority
<!-- id: prioridad-de-los-hilos-de-carga -->
<!-- origen: c70c11b9862f9b401167597fca89fd8dbc85c9c1 -->

Specifies the priority of worker threads that load tiles in the background.

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
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `Prioridad` |
| Default value | 1 or 0, depending on which code reads it first |

These SQL statements set the value 2, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'Prioridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Prioridad', 2 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
