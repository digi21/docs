# PREVIOUS\_ZOOM
<!-- id: zoom-anterior -->
<!-- origen: 44f90e0e9c100d4fc3192f18195a99d94850dd2e -->

Restore the drawing window view from before the last view change.

## Parameters

Does not accept parameters.

## Notes

The drawing window saves the previous view when the view moves or a command zooms to an area (for example, [ZOOMW](zoomv.md), [ZOOME](zoome.md), [ZOOMP](zoomp.md), or [ZOOM\_ENTITY](zoom-entidad.md)). Commands that only change the zoom factor ([ZOOM+](zoom-mas.md), [ZOOM-](zoom-menos.md), [ZOOMIN](zoomin.md), [ZOOMOUT](zoomout.md)) and the mouse wheel do not save it unless [ZOOM\_ANTERIOR includes zoom factor changes](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/zoom-anterior-incluye-factor-zoom.md) is enabled in the configuration dialog box.

The command also saves the view it replaces, so running it twice consecutively returns to the initial view. If no view has been saved yet, it does nothing.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Zooms/Previous zoom |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ZOOM\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-entidad.md)<br>[2PZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom2p.md)<br>[ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md)<br>[ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md)<br>[ZOOMW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md) |
| Internal name | {62F4D239-8713-438A-AB00-EEFDDF499ACF} |
