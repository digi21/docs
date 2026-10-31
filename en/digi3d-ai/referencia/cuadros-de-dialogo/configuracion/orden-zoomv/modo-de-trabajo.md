# Work mode
<!-- id: modo-de-trabajo -->
<!-- origen: 0165d6700477cab01850dc42302e46d8e30ec38e -->

Specifies how to mark the two window corners in the [ZOOMW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md) command.

## Possible values

* **Double clicking on Data** \(default\). Each corner is marked when releasing the Data button.
* **Drag and drop**. The first corner is marked when pressing the Data button, and the second when releasing it after moving the cursor. If you release the button without moving the cursor, no zoom occurs and the command waits for another drag.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\ZoomV` |
| :--- | :--- |
| Value | `up` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
