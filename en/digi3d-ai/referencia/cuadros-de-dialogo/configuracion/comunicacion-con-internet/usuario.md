# User
<!-- id: usuario -->
<!-- origen: 5c2e02013108a92efe299fb53eda3d07d17416ea -->

Specifies the _PROXY_ server username.

The username is only used if you selected **Proxy server** in [Connection type](tipo-de-conexion.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `UsuarioProxy` |
| Type | `REG_SZ` |
| Default value | (empty) |

The username is stored separately for each _Windows_ user: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
