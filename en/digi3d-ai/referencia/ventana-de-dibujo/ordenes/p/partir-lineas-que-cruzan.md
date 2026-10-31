# SPLIT\_CROSSING\_LINES
<!-- id: partir-lineas-que-cruzan -->
<!-- origen: 0150c1fc6a6b8d95396ccc6ff4020e2680e3d07e -->

Split all lines crossing the selected geometry at their intersections with it.

## Operation

1. Select the open or closed line to use as the boundary for splitting the others.
2. Digi3D.AI splits all visible lines crossing the selected line at their intersections.
3. Select another line to repeat the operation, or press **Esc** to finish.

Multiple selection is supported. When several lines are selected (for example, with a window selection or by sending [Search](/digi3d-ai/referencia/paneles/buscar.md) pane results to the **Active command**), each selected line acts as a boundary. A line crossing several boundaries is split at each intersection. Selected lines do not split one another.

## Notes

* No sections are deleted. Each piece retains the codes of the original line.
* The selected line is not modified.
* Lines in the working file are split if they are visible and inside the area of interest. Deleted lines are not split.
* If a closed line crosses the selected line, its pieces start and end at intersection points: the initial vertex of the closed line does not cause an additional split.
* If no lines cross the selected line, the error sound plays.
* To split lines and also delete or recode the sections inside a closed line, use [CLEAN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limpia.md).

## Parameters

This command takes no parameters.

If Digi3D.AI rejects any new piece, none of the lines crossing the selected line are split, and they remain whole. With multiple selection, each selected line is handled independently.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Geometric analysis/Divide lines at the cross point/Lines crossing the selected geometry |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CLEAN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limpia.md)<br>[SPIT\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas.md)<br>[SPLIT\_VISIBLES\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md)<br>[TRIM\_SIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim-lado.md) |
| Internal name | {27530311-1881-405A-BD49-F18FE94A957B} |
