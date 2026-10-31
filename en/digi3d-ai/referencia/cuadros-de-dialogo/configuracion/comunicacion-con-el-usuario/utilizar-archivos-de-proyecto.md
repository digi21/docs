# Use project files
<!-- id: utilizar-archivos-de-proyecto -->
<!-- origen: 3c8c856bd568c06198dee661a7c63d46ea5605f9 -->

If enabled, the drawing file tab of the new project dialog displays only an option box for selecting the project.

## Possible values

* **Yes**. The drawing file tab displays only project selection.
* **No**. The drawing file tab displays the usual options.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `DigiNG\Configuration` |
| Table | `Ints` |
| Value | `UtilizarProyectosArchivosDibujo` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'UtilizarProyectosArchivosDibujo' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UtilizarProyectosArchivosDibujo', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
