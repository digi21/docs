# Allow selecting non existing codes
<!-- id: permitir-seleccionar-codigos-inexistentes -->
<!-- origen: c59baa3f2553e3483b68b93a0225078523fba039 -->

Specifies whether you can select a code absent from the code table as the active code.

For example, running [COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) with a nonexistent code makes the program display or omit an error message depending on this option.

## Possible values

* **Yes**. A nonexistent code can be selected as the active code.
* **No**. A nonexistent code cannot be selected as the active code.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `PermitirSeleccionarCódigosInexistentes` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'PermitirSeleccionarCódigosInexistentes' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirSeleccionarCódigosInexistentes', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
