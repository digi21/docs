# Relative directory
<!-- id: directorio-relativo -->
<!-- origen: 7181a9863af4c1ac4bd11aa95e44b8da8e50ca9b -->

Specifies the subdirectory where snapshots will be stored when a command generates a snapshot.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `DirectorioInstantaneas` |
| Type | `REG_SZ` |
| Default value | `Instantáneas` (the text depends on the Digi3D.AI language) |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
