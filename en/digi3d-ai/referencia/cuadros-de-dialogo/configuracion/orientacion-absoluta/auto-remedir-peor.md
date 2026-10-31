# Automatically re-measure worse
<!-- id: auto-remedir-peor -->
<!-- origen: eec26d6806d99ee4e1b1c7a4ac393cbe84b31db7 -->

If enabled, clicking **Worse?** locates the point with the largest residual and automatically asks you to measure that point again.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Value | `AutoRemedirAlLocalizarPeor` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
