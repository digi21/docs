# Milliseconds of standby for continuous mode
<!-- id: milisegundos-de-espera-para-modo-continuo -->
<!-- origen: 624fd2881362d891dd6d58e2ade1da9ac2854912 -->

If the value differs from **0**, specifies the time, in milliseconds, from pressing the Data button or pedal until Digi3D.AI sends cursor movement coordinates again while you hold the button or pedal down. When you press the Data button or pedal, Digi3D.AI immediately sends a line with the cursor coordinates and the pressed state of the Data button or pedal; during the wait, Digi3D.AI does not send lines triggered by cursor movements, and when you release the button or pedal it sends without waiting a line with the state equal to 0.

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
