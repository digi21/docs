# REST\_ZOOM\_OUT
<!-- id: rest-zoomout -->
<!-- origen: bdd6c9cb3c966dcb9fc72e66ed64b8ec4988ddf7 -->

Decreases the zoom factor of the photogrammetric window's images.

## Parameters

None.

## Notes

Divides the zoom factor by 2.

The current zoom factor appears at the bottom of the photogrammetric window.

Below 1, the factor snaps to the nearest image pyramid level \(1/2, 1/4, 1/8...\), so the minimum depends on the loaded images' pyramid levels.

With Point Cloud and Stereoscopic orthophoto sensors, the command does not change the zoom factor: those sensors manage their own views.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Zoom Out |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [REST\_ZOOM\_IN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomin.md)<br>[PLOT\_ZOOM1X1](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoom-1-x-1.md)<br>[PLOT\_ZOOME](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoome.md)<br>[ZOOM\_MEMORY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/z/zoom_memoria.md) |
| Internal name | {3C418000-B8CC-4a2c-BF70-768FECAFBBA5} |
