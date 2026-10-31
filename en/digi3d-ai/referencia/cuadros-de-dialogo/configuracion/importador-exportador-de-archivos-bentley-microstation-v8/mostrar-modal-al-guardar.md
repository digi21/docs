# Show modal when saving
<!-- id: mostrar-modal-al-guardar -->
<!-- origen: 566b17696091ff1c198af97399aaef5270620d6a -->

If you enable this option, a dialog box appears during saving that prevents interaction with the main window while indicating that the file is being saved.

## Possible values

* **Yes**. Display a modal dialog box when saving.
* **No**. Do not display a dialog box when saving.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Dgn` |
| Table | `Ints` |
| Value | `MostrarModalAlGuardar` |
| Default value | 0 |

These SQL statements assign 1 whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog box, then restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Dgn');
DELETE FROM Ints WHERE Value = 'MostrarModalAlGuardar' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Dgn');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarModalAlGuardar', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Dgn';
```

</details>
