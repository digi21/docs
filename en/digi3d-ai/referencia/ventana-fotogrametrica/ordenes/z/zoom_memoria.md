# ZOOM\_MEMORY
<!-- id: zoom-memoria -->
<!-- origen: 08c7d514ee3ca381c892103ba215b7949f758e0b -->

Restores the photogrammetric window's previous zoom factor.

## Parameters

None.

## Notes

Digi3D.AI remembers the last two zoom factors applied in the photogrammetric window. This command applies the second-to-last factor. That counts as a zoom change, so running it again restores the factor from before the first execution. It toggles between the last two factors, for example one for viewing detail and another for moving around the model.

Reapplying the most recent factor does not count as a zoom change. This occurs when opening a model with the same factor it had when closed, redrawing the window or, with [SYNC\_ZOOMS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-zooms.md) enabled, applying zoom to the other views.

Both factors are saved in the Windows registry as `FactorZoomA` and `FactorZoomB`; `ÍndiceFactorZoom` indicates which is the latest. They therefore persist after closing the program. If there are no saved values, both factors are 1.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Zoom with memory (last two zooms) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [REST\_ZOOM\_IN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomin.md)<br>[REST\_ZOOM\_OUT](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomout.md)<br>[PLOT\_ZOOM1X1](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoom-1-x-1.md)<br>[PLOT\_ZOOME](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoome.md) |
| Internal name | {16C3724E-0398-44B4-9A3C-DB60B4DC6B38} |
