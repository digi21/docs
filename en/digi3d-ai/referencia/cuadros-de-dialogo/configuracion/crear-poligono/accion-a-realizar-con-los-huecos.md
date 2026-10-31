# Action to be performed with the holes
<!-- id: accion-a-realizar-con-los-huecos -->
<!-- origen: b9dd731e73a14854a6cb76eea42d738b81e25fa1 -->

Specifies what happens to the lines forming holes when creating a polygon with the [CREATE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md) command.

## Possible values

* **Do not remove the geometry** \(default\). Hole boundary lines are retained in the drawing file.
* **Remove the geometry**. Hole boundary lines are deleted from the drawing file.
* **Ask**. For each hole, the CREATE\_POLYGON command asks whether to delete the line forming that hole.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\InsertarHueco` |
| :--- | :--- |
| Value | `AccionHuecosCrearPoligono` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
