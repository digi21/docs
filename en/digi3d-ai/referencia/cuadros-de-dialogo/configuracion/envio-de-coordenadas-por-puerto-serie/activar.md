# Activate
<!-- id: activar -->
<!-- origen: 4e203e43dda1fd6954cb02788249cc58695356b3 -->

Specifies whether the photogrammetric window sends coordinates through the serial port.

## Possible values

* **Yes**. The active photogrammetric window sends coordinates through the serial port; other open photogrammetric windows do not.
* **No**. No coordinates are sent through the serial port.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\ComunicacionExterior` |
| Table | `Ints` |
| Value | `ActivarComunicacionExterior` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'ActivarComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ActivarComunicacionExterior', 1 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
