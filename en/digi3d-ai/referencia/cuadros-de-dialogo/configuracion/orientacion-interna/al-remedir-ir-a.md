# When re-measuring, go to
<!-- id: al-remedir-ir-a -->
<!-- origen: ada807db1873ed4738396c6da6900e8bcac996b8 -->

Specifies the coordinates to which the stereoscopic view moves when remeasuring a point: measured or calculated coordinates.

## Possible values

* **The measured point**.
* **The calculated point**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\InnerOrientation` |
| :--- | :--- |
| Value | `TipoIr` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
