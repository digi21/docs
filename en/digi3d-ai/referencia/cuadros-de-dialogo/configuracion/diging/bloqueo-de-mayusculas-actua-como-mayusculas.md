# Capitalization block acts as uppercase
<!-- id: bloqueo-de-mayusculas-actua-como-mayusculas -->
<!-- origen: 089c38083bd08b6dd255b11142eab50ba67dd5ff -->

If enabled, when Caps Lock is active and a key is pressed, the program considers the combination Shift + key to have been pressed.

## Possible values

* **Yes**. With Caps Lock active, keys act as Shift + key.
* **No**. Caps Lock is not interpreted as Shift.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `BloqueoMayusculasActuaComoMayusculas` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'BloqueoMayusculasActuaComoMayusculas' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'BloqueoMayusculasActuaComoMayusculas', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
