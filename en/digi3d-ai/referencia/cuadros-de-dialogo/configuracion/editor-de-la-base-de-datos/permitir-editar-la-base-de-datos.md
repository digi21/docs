# Allows the database to be edited
<!-- id: permitir-editar-la-base-de-datos -->
<!-- origen: 2c6ddf483019902c8a23e0441300fc2cb3c68afa -->

Specifies whether you can edit the database from the database editor.

## Possible values

* **Yes**. You can edit the database from the editor.
* **No**. The database editor is read-only.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `Digi3D\Configuration\DatabaseEditor` |
| Table | `Ints` |
| Value | `PermitirEditar` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'PermitirEditar' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirEditar', 1 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```

</details>
