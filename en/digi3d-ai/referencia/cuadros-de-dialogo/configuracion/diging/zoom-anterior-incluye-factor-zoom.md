# ZOOM\_ANTERIOR includes zoom factor changes
<!-- id: zoom-anterior-incluye-factor-zoom -->
<!-- origen: af1a7e9d2696da8e19899b4bcfb2d81e31c751fb -->

Specify which commands save the view restored by [PREVIOUS\_ZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md).

## Possible values

* **Yes**. Save the view when running commands that move it or only change the zoom factor: [ZOOM+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-mas.md), [ZOOM-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-menos.md), [ZOOMIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomin.md), [ZOOMOUT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomout.md), or when using the mouse wheel. With this option enabled, PREVIOUS\_ZOOM undoes the last zoom step.
* **No** \(default\). Only commands that move the view, such as [ZOOMW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md) or [ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md), save it.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `ZoomAnteriorIncluyeFactorZoom` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in Digi3DNET.db and is not modified by SQL statements in [Advanced configuration](../../configuracion-avanzada.md).

</details>
