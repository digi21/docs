# CHNG\_SMODE
<!-- id: camb-modob -->
<!-- origen: 57e215fd8cc847b430cd08be8f0cef773482acc9 -->

Set the search mode for snapping graphically to drawing elements.

## Parameters

Does not accept parameters.

The following table describes the search modes:

| Value | Snap | Description |
| :--- | :--- | :--- |
| 0 | Vertex or projection in XY | Try to find the entity vertices. If none is within the search area, project the point \(the cursor position\) onto the entity segment within that area. Snapping uses the calculated projection X and Y while preserving elevation. |
| 1 | Projection or vertex in XY | First try to calculate the projection onto the segment; if that is not possible, search for the nearest vertex. The projected point must be within the search area. Snapping uses its X and Y coordinates. |
| 2 | End vertices of the entity in XYZ | Consider only the entity first and last vertices. Snapping therefore uses only one of the entity ends, in X, Y, and Z. |
| 3 | Vertex or projection in XYZ | Same as mode 0, also snapping in Z. |
| 4 | Nearest vertex in XYZ | Find the nearest entity vertex and snap to it in X, Y, and Z. |
| 5 | Projection or vertex in XYZ | First try projection, then search for a vertex in X, Y, and Z. |
| 6 | End vertices at the cursor Z in XYZ | Snap in X, Y, and Z to the nearest entity end vertex, provided its Z equals the current Z. During stereoplotting, keep the Z\_fija switch enabled when snapping; you can also determine whether an existing contour was created with Z\_fija enabled. On analytical instruments, when you lock Z with Z\_fija, the system searches the cursor search area for a contour whose Z matches the locked Z and snaps to one of its ends. |
| 7 | XY of the last vertex and Z of the cursor | Use the last recorded point X and Y as the next data point's horizontal coordinates. Z is its value when you specify the point. No entity needs to be selected. This mode is commonly used to create volumes. |
| 8 | Segment midpoint in XYZ | Snap in X, Y, and Z to the midpoint of the segment selected with the cursor. |
| 9 | Nearest vertex in XY | Same as mode 2, taking only the nearest vertex X and Y. Z is taken from the current Z value. |
| 10 | End vertices of the entity in XY | Find the nearest of the entity first and last vertices and take its X and Y. Z retains the active value. |
| 11 | Intersection of two lines | Find the intersection point of two entities. |
| 12 | Point of the line at the cursor Z | On the line being snapped to, find the point whose Z matches the active Z. Use this to make a contour pass through rivers, paths, and similar features. |
| 13 | Entity center in XY | Snap in X and Y to the selected segment midpoint. Z is the current active value. |
| 14 | Entity center in XYZ | Snap in X, Y, and Z to the selected segment midpoint. |
| 15 | First vertex of the entity in XY | Snap in X and Y to the selected entity first digitized vertex. |
| 16 | First vertex of the entity in XYZ | Snap in X, Y, and Z to the selected entity first digitized vertex. |
| 17 | Last vertex of the entity in XY | Snap in X and Y to the selected entity last digitized vertex. |
| 18 | Last vertex of the entity in XYZ | Snap in X, Y, and Z to the selected entity last digitized vertex. |
| 19 | Lowest Z vertex in XY | Snap in X and Y to the selected entity vertex with the lowest Z. The new entity Z is the current active value. |
| 20 | Lowest Z vertex in XYZ | Snap in X, Y, and Z to the selected entity vertex with the lowest Z. |
| 21 | Highest Z vertex in XY | Snap in X and Y to the selected entity vertex with the highest Z. The new entity Z is the current active value. |
| 22 | Highest Z vertex in XYZ | Snap in X, Y, and Z to the selected entity vertex with the highest Z. |

### Notes

The cursor size and screen zoom factor determine an entity search area.

This command switches to the next search mode. Use [SMODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md) to specify a mode.

The command cycles through modes 0 to 22, returning to 0 after 22. Use [SMODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md) to activate a specific mode. If several search modes are active, the command leaves only mode 0 active.

### Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SMODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md) — search mode |
| Related commands | [AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md)<br>[EXHAUSTIVE\_AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md)<br>[AUTO\_SMODE\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md) |
| Internal name | {5740AB44-D47E-42f6-A4F5-B5906967D30A} |
