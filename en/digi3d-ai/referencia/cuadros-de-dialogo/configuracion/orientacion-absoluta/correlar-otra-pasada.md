# Correlate another strip
<!-- id: correlar-otra-pasada -->
<!-- origen: 432e1d567d03e6f02648b19e6f56a479b0da1947 -->

If enabled, a point is automatically correlated if it has already been measured in a photo from another strip.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Value | `CorrelarAbsolutaEntrePasadas` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
