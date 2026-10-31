# Language
<!-- id: idioma -->
<!-- origen: fd2c8402be19a6d844985b1b928a91b31654360a -->

Configures the language of the Digi3D.AI user interface and command names.

## Possible values

One of the installed languages (for example, **Español** or **English**).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Texts` |
| Value | `PreferredLanguage` |
| Default value | `en-US` |

These SQL statements set the text `es-ES`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'PreferredLanguage' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'PreferredLanguage', 'es-ES' FROM Keys WHERE Path = 'App\Configuration';
```

</details>
