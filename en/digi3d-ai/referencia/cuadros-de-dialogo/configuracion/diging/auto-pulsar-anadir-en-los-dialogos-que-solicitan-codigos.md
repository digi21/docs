# Automatically press Add... in dialogs requesting codes
<!-- id: auto-pulsar-anadir-en-los-dialogos-que-solicitan-codigos -->
<!-- origen: 28d54a11452338f2de37e4506ca3e83b6d30cd7d -->

Enable **If enabled, tasks will be automatically removed from the panel when an order attempts to add a task.** to click **Add** automatically in dialog boxes requesting codes, such as those opened by ON and OFF.

## Possible values

* **Yes**. Click Add automatically.
* **No**. Click Add manually.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo` |
| Default value | 0 or 1, depending on which code reads it first |

These SQL statements assign 1 whether or not the row exists. Run them in [Advanced configuration](../../configuracion-avanzada.md), then restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
