# Allow attributes with Table=1
<!-- id: permitir-atributos-con-tabla-1 -->
<!-- origen: d14a3e2a9966c2a0af605beee8cc0e3c8d6a308e -->

If enabled, table 1 is considered a database table rather than the internal program table.

## Possible values

* **Yes**. Table 1 is treated as a database table.
* **No**. Table 1 is treated as the internal program table.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\IO\Digi21.Io.Bin` |
| Table | `Ints` |
| Value | `PermitirAtributosTabla1` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Bin');
DELETE FROM Ints WHERE Value = 'PermitirAtributosTabla1' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Bin');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirAtributosTabla1', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Bin';
```

</details>
