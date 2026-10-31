# Baud rate
<!-- id: velocidad-en-baudios -->
<!-- origen: c40bdabf3c1d17757d00b875af500537dcfd6130 -->

Specifies the speed, in baud, at which information is sent through the serial port. It must match the speed configured on the receiving device.

## Possible values

One of the available standard speeds: 50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800, 9600, 19200, 28800, 38400, 57600, 76800, 115200, 230400, 460800, 576000, or 921600 baud.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\ComunicacionExterior` |
| Table | `Ints` |
| Value | `BaudiosComunicacionExterior` |
| Default value | 115200 |

These SQL statements set the value 115200, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'BaudiosComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'BaudiosComunicacionExterior', 115200 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
