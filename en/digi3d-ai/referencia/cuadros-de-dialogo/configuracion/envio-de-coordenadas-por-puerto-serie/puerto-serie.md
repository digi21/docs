# Serial port
<!-- id: puerto-serie -->
<!-- origen: 27095b89cf0af70ea8df8d7ca89c822218a5c32c -->

Specifies the serial port through which information is sent.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\ComunicacionExterior` |
| Table | `Ints` |
| Value | `PuertoSerieComunicacionExterior` |
| Default value | 1 |

These SQL statements set the value 0, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'PuertoSerieComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PuertoSerieComunicacionExterior', 0 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
