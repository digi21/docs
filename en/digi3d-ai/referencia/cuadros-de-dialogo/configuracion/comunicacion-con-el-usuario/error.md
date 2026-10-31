# Error
<!-- id: error -->
<!-- origen: 2a9fd2cc1d4156aec6857b1c4e55709f012174df -->

Specifies the path of the _.wav_ file containing the sound played when an error occurs.

Only used if you selected **Sound card** in [Sounds](sonidos.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SonidoError` |
| Type | `REG_SZ` |
| Default value | (empty) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
