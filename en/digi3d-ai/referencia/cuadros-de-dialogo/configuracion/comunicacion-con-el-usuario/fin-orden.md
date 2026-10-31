# End command
<!-- id: fin-orden -->
<!-- origen: a530d8baa9c48f42ef7253bbde679360a114c00b -->

Specifies the path of the _.wav_ file containing the sound played when a command ends.

Only used if you selected **Sound card** in [Sounds](sonidos.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SonidoFinOrden` |
| Type | `REG_SZ` |
| Default value | (empty) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
