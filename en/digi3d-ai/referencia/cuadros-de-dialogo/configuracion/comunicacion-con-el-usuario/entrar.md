# Enter
<!-- id: entrar -->
<!-- origen: 2f7c06b26b31089bba8c3f757c0f561c52635b36 -->

Specifies the path of the _.wav_ file containing the sound played when the user enters the polygon selected with the [LMIT_1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-1.md) command.

Only used if you selected **Sound card** in [Sounds](sonidos.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SonidoEntrar` |
| Type | `REG_SZ` |
| Default value | (empty) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
