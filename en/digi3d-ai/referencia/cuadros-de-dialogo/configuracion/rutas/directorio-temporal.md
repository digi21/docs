# Temporary directory
<!-- id: directorio-temporal -->
<!-- origen: 27b6e4bec58cb6faf04778a9a15e07a57602cf8d -->

Specifies the Digi3D.AI temporary directory, which contains, among other things, error files generated if the program terminates unexpectedly.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `DirectorioTemporal` |
| Type | `REG_SZ` |
| Default value | _Windows_ temporary folder |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
