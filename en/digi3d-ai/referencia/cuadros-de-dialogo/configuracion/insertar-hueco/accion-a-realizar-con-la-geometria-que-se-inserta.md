# Action to be carried out with the geometry inserted in INSERT\_HUECO
<!-- id: accion-a-realizar-con-la-geometria-que-se-inserta -->
<!-- origen: 797a0859d98d7c4938635b7c968aa2530367011f -->

Specifies what happens to the geometry selected as a hole in the [INSERT\_HOLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md) command after inserting it into the polygon.

## Possible values

* **Do not remove the geometry** \(default\). The selected geometry is retained in the drawing file.
* **Remove the geometry**. The selected geometry is deleted from the drawing file.
* **Ask**. The command asks whether to delete the geometry.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\InsertarHueco` |
| :--- | :--- |
| Value | `EliminarEntidadQueFormaHueco` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
