# Connection type
<!-- id: tipo-de-conexion -->
<!-- origen: eb622d49c8c339b1a89fc9b9bbab3415b4c11368 -->

Configures the Digi3D.AI Internet connection type. If the computer connects to the Internet through a _PROXY_ server, specify it here.

## Possible values

If not configured, the value is **Direct**.

* **Direct**. The computer connects to the Internet directly, without a PROXY.
* **Proxy with registry settings**. Uses the PROXY with the configuration stored in Windows.
* **Proxy server**. Allows manual configuration of the proxy [address](direccion.md), [username](usuario.md), and [password](contrasena.md).

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
