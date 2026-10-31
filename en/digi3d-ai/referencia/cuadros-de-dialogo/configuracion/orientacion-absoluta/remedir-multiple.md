# Multiple re-measurement
<!-- id: remedir-multiple -->
<!-- origen: fe57e617ce6a74892dfe84402109eec5a0824170 -->

If enabled, when remeasuring a point the absolute orientation command asks you to measure that point again until you press Esc or accept or cancel the absolute orientation dialog.

## Possible values

* **Yes**.
* **No**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Value | `RemedirMultiple` |
| Type | `REG_DWORD` |
| Default value | 1. If the value does not exist, the **Configuration** dialog displays 0 and saves it when you click **Accept**. |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
