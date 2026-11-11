# Format for external communication
<!-- id: formato-de-comunicacion-exterior -->
<!-- origen: 155ac77ac14d05ee39256d60622e3a6490dc97d8 -->

Specifies the format in which coordinates are sent through the serial port.

## Possible values

* **pedal-x-y-z (ASCII)**. Floating-point coordinates with 3 decimal places.
* **x-y-z-pedal (ASCII)**. Floating-point coordinates with 3 decimal places.
* **pedal-x-y-z (ASCII), integer ×100**. Integer coordinates multiplied by 100.
* **pedal-x-y-z (ASCII), integer ×1000**. Integer coordinates multiplied by 1000.

With both integer formats, Digi3D.AI multiplies each coordinate by 100 or 1000 and rounds it to the nearest integer; for example, with ×100, 200.996 is sent as 20100. A value exactly halfway is rounded to the integer with the larger absolute value.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\ComunicacionExterior` |
| Table | `Ints` |
| Value | `FormatoComunicacionExterior` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'FormatoComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FormatoComunicacionExterior', 1 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
