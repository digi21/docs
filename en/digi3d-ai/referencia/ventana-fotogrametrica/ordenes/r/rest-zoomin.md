# REST\_ZOOM\_IN
<!-- id: rest-zoomin -->
<!-- origen: 1be754bf2022c06245f0494e724613c42c435108 -->

Increases the zoom factor of the photogrammetric window's images.

## Parameters

None.

## Notes

Multiplies the zoom factor by 2.

The maximum zoom factor is 128: results above that value are capped at 128. Below 1, the factor snaps to the nearest image pyramid level \(1/2, 1/4, 1/8...\).

With Point Cloud and Stereoscopic orthophoto sensors, the command does not change the zoom factor: those sensors manage their own views.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Zoom In |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [REST\_ZOOM\_OUT](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomout.md)<br>[PLOT\_ZOOM1X1](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoom-1-x-1.md)<br>[PLOT\_ZOOME](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoome.md)<br>[ZOOM\_MEMORY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/z/zoom_memoria.md) |
| Internal name | {294C0E27-1FAB-4b10-A560-BE8516E7AE8E} |
