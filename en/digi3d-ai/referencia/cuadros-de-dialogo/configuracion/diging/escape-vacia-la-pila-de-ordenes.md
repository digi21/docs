# Esc empties the command stack
<!-- id: escape-vacia-la-pila-de-ordenes -->
<!-- origen: b08f57d3161d24f2f0bd5765462f3e85c0b3657a -->

If enabled, pressing Esc clears the entire command stack.

## Possible values

* **Yes**. Esc clears the entire command stack.
* **No**. Esc does not clear the command stack.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `EscapeVaciaPilaOrdenes` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'EscapeVaciaPilaOrdenes' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'EscapeVaciaPilaOrdenes', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
