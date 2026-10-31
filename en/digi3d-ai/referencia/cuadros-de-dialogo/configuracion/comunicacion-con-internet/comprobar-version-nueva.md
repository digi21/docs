# Check for new version
<!-- id: comprobar-version-nueva -->
<!-- origen: 2b192d1f1a76d78e90281d2e34a0d6d3aa0e1539 -->

Configures whether Digi3D.AI checks for a new version whenever it starts. If one exists, Digi3D.AI displays the [New version found](../../localizada-una-version-nueva.md) dialog.

This option does not appear in BETA versions of Digi3D.AI.

## Possible values

* **Yes**. Digi3D.AI checks for a new version whenever it starts.
* **No**. Digi3D.AI does not check for a new version.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `ComprobarVersiónNueva` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ComprobarVersiónNueva' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComprobarVersiónNueva', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
