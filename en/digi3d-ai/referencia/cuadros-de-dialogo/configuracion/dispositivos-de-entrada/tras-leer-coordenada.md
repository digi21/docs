# After reading coordinate
<!-- id: tras-leer-coordenada -->
<!-- origen: 71b0194ebc338ebe78602cc91fcb932b4e001e38 -->

Specifies whether the coordinate reading thread yields control to the main application after processing a coordinate or continues processing coordinates without yielding.

## Possible values

* **The thread cedes control**. After processing a coordinate, the thread returns control to the main application.
* **The thread continues to analyze coordinates**. The thread continues processing coordinates without yielding control.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\IO\TarjDigi3D` |
| Table | `Ints` |
| Value | `CederControl` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'CederControl' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CederControl', 0 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
