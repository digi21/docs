# Create back-up copy every (minutes)
<!-- id: generar-copia-de-seguridad-cada-minutos -->
<!-- origen: e2778f57895ea93666dffd160839f6bb030fd3b7 -->

Specifies how often, in minutes, a drawing file backup is created. Enter **0** to disable automatic backups.

Elapsed time between backups is checked only when saving a geometry: each time a geometry is saved, the program checks whether the specified number of minutes has elapsed and, if so, creates the backup and resets the counter. This option does not create backups if no geometry is saved, even if you leave the program open.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `MinutosCopiaSeguridad` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MinutosCopiaSeguridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MinutosCopiaSeguridad', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
