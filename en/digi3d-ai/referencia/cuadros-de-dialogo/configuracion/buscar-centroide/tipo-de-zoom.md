# Zoom type
<!-- id: tipo-de-zoom -->
<!-- origen: 3685e9ba32b1fc2f8ea6798a8b117838fe7e784f -->

Specifies what the drawing window does when the [SEARCH\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md) command locates a centroid.

## Possible values

* **Center the window on the centroid** \(default\). The window moves to the centroid without changing the zoom factor.
* **Zoom to centroid**. The window zooms to the centroid.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\DigiNG.OrdenesTopologia\BuscarCentroide` |
| :--- | :--- |
| Value | `TipoZoom` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
