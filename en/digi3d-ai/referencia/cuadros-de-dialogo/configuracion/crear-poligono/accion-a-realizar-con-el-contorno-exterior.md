# Action to be performed with the outer line
<!-- id: accion-a-realizar-con-el-contorno-exterior -->
<!-- origen: 25a06d2b267ad21876ce08e1969fa2807914c282 -->

Specifies what happens to the line forming the outer boundary when creating a polygon with the [CREATE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md) command.

## Possible values

* **Do not remove the geometry**. The outer boundary line is retained in the drawing file.
* **Remove the geometry** \(default\). The outer boundary line is deleted from the drawing file.
* **Ask**. The command asks whether to delete the line.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\InsertarHueco` |
| :--- | :--- |
| Value | `AccionContornoExteriorCrearPoligono` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
