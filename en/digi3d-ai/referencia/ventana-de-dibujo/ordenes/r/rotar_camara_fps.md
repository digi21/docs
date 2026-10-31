# ROTATE\_CAMERA\_FPS
<!-- id: rotar-camara-fps -->
<!-- origen: d9a06b54d466b13635b7fd36f7c3c22a8205d910 -->

Rotate the drawing window camera with mouse movements.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Synchronize rotation with Digi3D | 0 (no) or 1 (yes) | Yes |

## Notes

The command disables _SpaceMouse_ movement control and enables it again when the command finishes.

The command hides the cursor and keeps it at the center of the window. Horizontal mouse movement changes the camera's kappa rotation; vertical movement changes its omega rotation. Press Esc to finish the command.

With parameter 1, the command sends the camera position and orientation to the photogrammetric window if its sensor supports a first-person camera.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SPACEMOUSE\_SPEED\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/velocidad_spacemouse_xyz.md) — SpaceMouse speed factor in the drawing window |
| Related commands | [MOVE\_CAMERA\_FPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-camara-fps.md) |
| Internal name | {4E0625A7-9F2C-4E75-8307-497A66FCC20A} |
