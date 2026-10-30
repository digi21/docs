# LMIT\_1
<!-- id: limite-1 -->
<!-- origen: 2343f6eb3e28f32cd7c563a780010f376c1ed8dc -->

Set a work area bounded by the geometric outline of a line.

## Parameters

Does not accept parameters.

## Notes

The command prompts you to select the boundary line. The line must exist before you run the command and can have any shape \(including concave and convex sections\). If you select an entity that is not a line \(such as a polygon\), the command plays an error sound and rejects it. To define the line with as few points as possible, draw it in point-by-point mode.

Once the boundary is set, the system plays one sound when the cursor leaves the work area and another when it reenters, but allows you to continue drawing outside the boundary. Run [LIMIT\_0](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-0.md) to disable the boundary.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LIMIT\_0](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-0.md) |
| Internal name | {0560D7E3-0C04-44ad-82BD-E3D9B91A34CF} |
