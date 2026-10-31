# GROUND\_CURSOR
<!-- id: cursor-terreno -->
<!-- origen: af311830be440b0986edb90462763b9068a72692 -->

Draw a circle with a fixed ground radius around the cursor in the drawing window and photogrammetric windows. The circle follows the cursor and can help, for example, when measuring elevations at points spaced approximately one circle radius apart.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Circle radius | Real number in the coordinate reference system units of the drawing file. Zero or a negative value stops Digi3D.AI from drawing the circle | Yes. Omitting it stops Digi3D.AI from drawing the circle |

### Example

GROUND\_CURSOR=40

Draw a circle with a radius of 40 units around the cursor: 40 meters if the drawing file uses a projected coordinate reference system in meters.

GROUND\_CURSOR

Stop drawing the circle.

## Notes

* Digi3D.AI saves the radius and uses it in subsequent sessions until the command is run again.
* If the drawing file uses a geographic coordinate reference system, the radius is in its angular unit, rather than meters.
* In the drawing window, the circle appears alongside the cursor crosshair, and its screen size changes with zoom. While a command replaces the crosshair with another pointer, the drawing window does not draw the circle.
* In each photogrammetric window, Digi3D.AI calculates the circle in the drawing file coordinate reference system at the cursor elevation, then projects it onto each image using the floating mark color for that image. The circle appears distorted according to the perspective of each image.
* Photogrammetric windows for sensors that render their own scene, [PointCloud](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/point-cloud.md) and [Stereo orthophoto](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/ortofoto-estereoscopica.md), do not draw the circle.
* Photogrammetric windows draw the circle only when a drawing window is open.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CURSOR](cursor.md) |
| Internal name | {6C1F5A3E-8D27-4B9A-9E40-2F7C3B5D1A86} |
