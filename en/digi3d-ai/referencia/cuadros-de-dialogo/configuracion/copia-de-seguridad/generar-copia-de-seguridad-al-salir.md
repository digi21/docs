# Create back-up copy on exit
<!-- id: generar-copia-de-seguridad-al-salir -->
<!-- origen: 6a2ea787335677c16a2817a8b64c7aad268de40c -->

Specifies whether Digi3D.AI automatically creates a backup of the working file when closing the drawing window.

## Possible values

* **Yes**. A backup is created when closing the drawing window.
* **No**. No backup is created when closing the drawing window.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `GenerarCopiaSeguridadAlSalir` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarCopiaSeguridadAlSalir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarCopiaSeguridadAlSalir', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
