# Password
<!-- id: contrasena -->
<!-- origen: c563242d23e946f97e479242200a5408d5f6e9ce -->

Specifies the _PROXY_ server password.

The password is only used if you selected **Proxy server** in [Connection type](tipo-de-conexion.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `ContraseñaProxy` |
| Type | `REG_BINARY` (64 bytes containing the encrypted password) |
| Default value | No value |

The password is stored separately for each _Windows_ user: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
