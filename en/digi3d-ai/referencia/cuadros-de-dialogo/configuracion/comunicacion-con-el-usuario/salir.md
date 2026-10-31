# Exit
<!-- id: salir-2 -->
<!-- origen: 0b3b856196ab2312a469a0564c61774e3cad8fd4 -->

Specifies the path of the _.wav_ file containing the sound played when the user leaves the polygon selected with the [LMIT_1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-1.md) command.

Only used if you selected **Sound card** in [Sounds](sonidos.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SonidoSalir` |
| Type | `REG_SZ` |
| Default value | (empty) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
