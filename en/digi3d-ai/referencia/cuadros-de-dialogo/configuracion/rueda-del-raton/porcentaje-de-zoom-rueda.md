# Zoom wheel percentage
<!-- id: porcentaje-de-zoom-rueda -->
<!-- origen: 12fd8811e1c4733f5ff9358af97b24bace724d27 -->

Set the zoom factor applied to each mouse wheel step. Scrolling down divides the visible area width and height by this value (zooming out); scrolling up multiplies them by it (zooming in). [ZOOM+](../../../ventana-de-dibujo/ordenes/z/zoom-mas.md), [ZOOM-](../../../ventana-de-dibujo/ordenes/z/zoom-menos.md), [ZOOMIN](../../../ventana-de-dibujo/ordenes/z/zoomin.md), and [ZOOMOUT](../../../ventana-de-dibujo/ordenes/z/zoomout.md) use the same value. The default is 0.99.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `PorcentajeZoomRueda` |
| Type | `REG_BINARY` (8-byte real number, `double`) |
| Default value | 0.99 |

This is a per-user _Windows_ value: it is not in Digi3DNET.db and is not modified by SQL statements in [Advanced configuration](../../configuracion-avanzada.md).

</details>
