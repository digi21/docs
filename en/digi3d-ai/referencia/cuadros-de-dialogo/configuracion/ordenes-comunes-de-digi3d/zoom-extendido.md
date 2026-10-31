# Extended zoom
<!-- id: zoom-extendido -->
<!-- origen: 8e4c2484db0fc8695e814194fe19b79c44345d9a -->

Specifies the action performed by the Extended zoom command (PLOT_ZOOME).

## Possible values

* **Change the zoom factor and move the equipment to the center of the model.**
* **Change the zoom factor without moving the equipment to the center of the model.**

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.STDOrdRest\Zoom` |
| :--- | :--- |
| Value | `ZoomExtendidoCentraEnModelo` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
