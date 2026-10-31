# Address
<!-- id: direccion -->
<!-- origen: cf35d8d6625da180081e4a2bab92a44ccb3f4e07 -->

Specifies the _PROXY_ server address.

The address is only used if you selected **Proxy server** in [Connection type](tipo-de-conexion.md).

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Texts` |
| Value | `DirecciónProxy` |
| Default value | (empty) |

These SQL statements set the text `proxy.miempresa.com:8080`, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'DirecciónProxy' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirecciónProxy', 'proxy.miempresa.com:8080' FROM Keys WHERE Path = 'App\Configuration';
```

</details>
