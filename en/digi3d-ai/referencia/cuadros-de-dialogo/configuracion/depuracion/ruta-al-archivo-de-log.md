# Path to LOG file
<!-- id: ruta-al-archivo-de-log -->
<!-- origen: 233de363c792cfa13e109f9370c7350a70fbd16e -->

Specifies the location and name of the LOG file Digi3D.AI creates when [Create LOG file](crear-archivo-de-log.md) is set to **Yes**.

Enter the full path of a text file \(with the _.txt_ extension\). If **Create LOG file** is set to **No**, Digi3D.AI does not use the specified path.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Texts` |
| Value | `RutaArchivoLog` |
| Default value | (empty) |

These SQL statements set the text `C:\Registros\Digi3D.log`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'RutaArchivoLog' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaArchivoLog', 'C:\Registros\Digi3D.log' FROM Keys WHERE Path = 'App\Configuration';
```

</details>
