# Name to show
<!-- id: nombre-a-mostrar -->
<!-- origen: b9ca3e4b2c52b59e3096e44ba185a9600ca185bb -->

Specifies the text used as the name of database fields.

## Possible values

* **Name**. Displays the internal field name.
* **Title**. Displays the descriptive field title.
* **Name and title**. Displays the internal name and descriptive title.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Configuration\DatabaseEditor` |
| Table | `Ints` |
| Value | `TipoTitulosCampos` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'TipoTitulosCampos' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoTitulosCampos', 1 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```

</details>
