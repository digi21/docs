# Minimum iterations
<!-- id: minimo-iteraciones -->
<!-- origen: 0364844137b44f20bd7430147a0e14ea9a3da913 -->

Specifies the minimum number of iterations when searching for the best exterior orientation. Small values increase processing speed but may prevent selection of the correct equation.

The default value is 10.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ADS40Sensor` |
| :--- | :--- |
| Value | `MinIteracionesB` |
| Type | `REG_DWORD` |
| Default value | 10 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
