# Correlate the same strip
<!-- id: correlar-misma-pasada -->
<!-- origen: d78c303a530666991056ba0f5b69c1f3fa2101ce -->

If enabled, a point is automatically correlated if it has already been measured in a photo from the same strip.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Value | `CorrelarAbsolutaMismaPasada` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
