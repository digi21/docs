# When correlating, go to the worst point
<!-- id: al-correlar-ir-al-peor-punto -->
<!-- origen: 45afc7c2097138b31ffcdabd8b0cd83a4ad995a7 -->

Specifies whether the stereoscopic view moves to the point with the worst residuals when correlation finishes.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\InnerOrientation` |
| :--- | :--- |
| Value | `IrAPeorAlCorrelar` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
