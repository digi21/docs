# ZOOMP
<!-- id: zoomp -->
<!-- origen: 754e6bebd3c45b6964238fcbfb11d61a4b7c514a -->

Center the drawing view on a point you choose.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | X coordinate | Yes |
| 2 | Y coordinate | Yes |

## Notes

Without parameters, the command prompts you to digitize the point on which to center the view.

With both parameters, the command centers the view on (X, Y), in drawing coordinate system units, without prompting for a point. If you specify only X, the parameter is ignored and a point is requested.

The zoom factor does not change.

### Example

`ZOOMP=450230.5 4479810.2`

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Zooms/Center view on a digitized point |
| Toolbar | Window displacement |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [PREVIOUS\_ZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md)<br>[2PZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom2p.md)<br>[ZOOMTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zooma.md) |
| Internal name | {06225501-1195-4b03-B53F-947B307BB745} |
