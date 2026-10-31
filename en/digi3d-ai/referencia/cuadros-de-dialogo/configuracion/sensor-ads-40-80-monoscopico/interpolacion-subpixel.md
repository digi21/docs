# Subpixel interpolation
<!-- id: interpolacion-subpixel -->
<!-- origen: e140844eeb665ff533abe5b39289c2c421d1d9a8 -->

Specifies whether calculations use subpixel interpolation.

## Possible values

* **Enabled** \(default\). Calculations use subpixel interpolation.
* **Disabled**. Calculations do not use subpixel interpolation.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ADS40Sensor` |
| :--- | :--- |
| Value | `InterpolacionSubpixel` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
