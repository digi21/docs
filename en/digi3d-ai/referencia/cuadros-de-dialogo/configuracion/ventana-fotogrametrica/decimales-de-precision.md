# Precision decimals
<!-- id: decimales-de-precision -->
<!-- origen: 8e8e5cab8c95863ff3f450f85dd26e640a29b903 -->

Specifies the number of decimal places used to display coordinates and residuals in dialogs and windows.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `DecimalesPrecision` |
| Default value | 3 |

These SQL statements set the value 3, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'DecimalesPrecision' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'DecimalesPrecision', 3 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
