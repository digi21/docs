# ZOOM\_ANTERIOR incluye los cambios del factor de zoom
<!-- id: zoom-anterior-incluye-factor-zoom -->

Indica qué órdenes guardan la vista que restaura [ZOOM\_ANTERIOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md).

## Valores posibles

* **Sí**. La vista se guarda al ejecutar órdenes que desplazan la vista o que solo cambian el factor de zoom: [ZOOM+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-mas.md), [ZOOM-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-menos.md), [ZOOMIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomin.md), [ZOOMOUT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomout.md) o al utilizar la rueda del ratón. Con esta opción activada, ZOOM\_ANTERIOR deshace el último paso de zoom.
* **No** \(valor por defecto\). Solo guardan la vista las órdenes que desplazan la vista, como [ZOOMV](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md) o [ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md).

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `ZoomAnteriorIncluyeFactorZoom` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
