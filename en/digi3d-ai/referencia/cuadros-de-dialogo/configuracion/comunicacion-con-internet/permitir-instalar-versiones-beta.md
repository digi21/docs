# Allow to install BETA versions
<!-- id: permitir-instalar-versiones-beta -->
<!-- origen: 8bfaf57c27d82387921262ea2f3680f52ccafbed -->

Configures whether Digi3D.AI also considers BETA versions when checking for a new version (versions that have not yet been fully tested and may contain errors). New versions appear in the [New version found](../../localizada-una-version-nueva.md) dialog.

This option does not appear in BETA versions of Digi3D.AI.

## Possible values

* **Yes**. Digi3D.AI includes BETA versions when checking for a new version.
* **No**. Digi3D.AI only considers stable versions.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `ComprobarVersiónBETA` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ComprobarVersiónBETA' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComprobarVersiónBETA', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
