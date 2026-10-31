# Milliseconds of standby for continuous mode
<!-- id: milisegundos-de-espera-para-modo-continuo -->
<!-- origen: d7ce74fcce993dcecd565c863be0745de7b08c4b -->

If the value differs from **0**, specifies the delay, in milliseconds, from pressing the Data button or pedal until coordinates start being sent while you hold the button or pedal down.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\ComunicacionExterior` |
| Table | `Ints` |
| Value | `MilisegundosEsperaOnMove` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'MilisegundosEsperaOnMove' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MilisegundosEsperaOnMove', 1 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
