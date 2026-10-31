# Message completion
<!-- id: finalizacion-del-mensaje -->
<!-- origen: d71f85f5052f0cfb9172a82b51d190527b906fd6 -->

Specifies the bytes ending each message sent through the serial port.

## Possible values

* **\\0**. Null character.
* **\\n**. Line feed.
* **\\r**. Carriage return.
* **\\r\\n**. Carriage return and line feed.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\ComunicacionExterior` |
| Table | `Ints` |
| Value | `Postfijo` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'Postfijo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Postfijo', 0 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
