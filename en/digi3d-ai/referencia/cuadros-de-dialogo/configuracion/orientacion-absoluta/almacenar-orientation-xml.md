# Save .orientation.xml
<!-- id: almacenar-orientation-xml -->
<!-- origen: d67fb7fa3660e4b2b03189998154a0359bfca6c5 -->

Specifies whether an _.orientation.xml_ file is generated when accepting absolute orientation.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Value | `AlmacenarOrientationXml` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
