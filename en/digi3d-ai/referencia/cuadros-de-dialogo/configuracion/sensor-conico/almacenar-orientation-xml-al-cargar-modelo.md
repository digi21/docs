# Save Orientation.xml when loading model
<!-- id: almacenar-orientation-xml-al-cargar-modelo -->
<!-- origen: cd72229f291ae2d48a6fd7c148f5c69eb33d989b -->

Specifies whether an _.orientation.xml_ file is saved for each photo when loading the model.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor` |
| :--- | :--- |
| Value | `AlmacenarOrientationXmlAlCargarModelo` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
