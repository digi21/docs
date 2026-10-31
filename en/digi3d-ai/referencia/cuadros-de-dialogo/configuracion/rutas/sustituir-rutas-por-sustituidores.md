# Replace path with substitutors
<!-- id: sustituir-rutas-por-sustituidores -->
<!-- origen: 728bca652c506362d2ef1504c7abaa1fc3f73293 -->

If enabled, the program replaces selected paths with variables representing directories (replacers) whenever possible. This avoids saving the corresponding absolute paths in configuration files.

## Possible values

* **Yes**. Paths are replaced with replacers whenever possible.
* **No**. Paths are stored as they are, as absolute paths.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SustituirRutasPorSustituidores` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
