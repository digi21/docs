# Analyze double click
<!-- id: analizar-doble-clic -->
<!-- origen: 27fa24b4a7ac4f0cdb194ba8c256b06a5628e1d1 -->

Specifies whether Digi3D.AI analyzes Data button or pedal presses and sends double-click events.

## Possible values

* **Yes**. Digi3D.AI detects Data button or pedal double-clicks and reports them.
* **No**. Digi3D.AI does not detect Data button or pedal double-clicks.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\IO\TarjDigi3D` |
| Table | `Ints` |
| Value | `AnalizarDobleClic` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'AnalizarDobleClic' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AnalizarDobleClic', 1 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
