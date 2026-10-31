# Reset empties the order stack
<!-- id: reset-vacia-la-pila-de-ordenes -->
<!-- origen: 5170aebc0cf954391ab411e884a041b837a175c4 -->

If enabled, pressing the RESET button cancels all commands on the command stack, rather than only the active command.

## Possible values

* **Yes**. RESET clears the entire command stack.
* **No**. RESET cancels only the active command.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `ResetVaciaPilaOrdenes` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'ResetVaciaPilaOrdenes' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ResetVaciaPilaOrdenes', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
