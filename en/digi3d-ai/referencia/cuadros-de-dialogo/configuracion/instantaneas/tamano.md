# Size
<!-- id: tamano -->
<!-- origen: 65fe40b4e744fecf922cab2bf7900b51463abe6a -->

Specifies the size, in pixels (width and height), of generated snapshots.

<details>
<summary>Where it is stored</summary>

Snapshot width:

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `TamanoInstantanea0` |
| Type | `REG_DWORD` |
| Default value | 500 |

Snapshot height:

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `TamanoInstantanea1` |
| Type | `REG_DWORD` |
| Default value | 500 |

These are per-user _Windows_ values: they are not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify them.

</details>
