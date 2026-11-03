# Connection type
<!-- id: tipo-de-conexion -->
<!-- origen: eb622d49c8c339b1a89fc9b9bbab3415b4c11368 -->

Configures the Digi3D.AI Internet connection type: without a proxy, or with the Windows proxy settings.

## Possible values

If not configured, the value is **Direct**.

* **Direct**. Digi3D.AI connects to the Internet directly, without using any proxy.
* **Windows proxy settings**. Digi3D.AI connects to the Internet with the Windows proxy settings of the computer. If Windows has no proxy configured, the connection is direct.

This setting is used by the connections of the Web Map Service (WMS) and Web Map Tile Service (WMTS) sensors and connectors, the OpenStreetMap (Slippy Map) importer, and the cadastre commands (open cadastre, go to cadastral reference, and label cadastral reference).

A configuration saved with the **Proxy server** option in earlier versions uses the **Windows proxy settings** option. Digi3D.AI no longer stores a proxy address, username, or password: configure them in Windows.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration` |
| Table | `Ints` |
| Value | `TipoConexionInternet` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'TipoConexionInternet' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoConexionInternet', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
