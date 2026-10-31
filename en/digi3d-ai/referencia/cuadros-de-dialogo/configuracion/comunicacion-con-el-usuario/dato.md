# Data
<!-- id: dato -->
<!-- origen: 44f169bb2dbc5b866de381db37734a581a87462c -->

Specifies the path of the _.wav_ file containing the sound played when you press the Data button/pedal.

Only used if you selected **Sound card** in [Sounds](sonidos.md).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SonidoDato` |
| Type | `REG_SZ` |
| Default value | (empty) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
