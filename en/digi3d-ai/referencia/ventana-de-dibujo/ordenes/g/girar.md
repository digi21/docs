# ROTATE
<!-- id: girar -->
<!-- origen: 315eb297a97542924f0f6fce6a11691075ef0c07 -->

Rotate the viewing window.

## Parameters

The command accepts one of these two forms:

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Camera rotation around the Z axis, in degrees. Rotations around X and Y do not change | Real number | No |

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1, 2, 3 | X, Y, Z coordinates of the camera position | Real number | No |
| 4, 5, 6 | Camera rotations around the X, Y, and Z axes, in degrees | Real number | No |

Without parameters, the command does nothing. With two to five parameters, it displays an error message and does not change the camera.

### Example

`ROTATE=90`

## Command characteristics


| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option |Zooms/Camera rotation/0 degrees<br>Zooms/Camera rotation/90 degrees<br>Zooms/Camera rotation/180 degrees<br>Zooms/Camera rotation/270 degrees|
| Toolbar | Camera rotation |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [VIEWPOINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-vista.md) |
| Internal name | {1A1D36C6-9CAE-47b2-8740-2E5AA4D36E23} |
