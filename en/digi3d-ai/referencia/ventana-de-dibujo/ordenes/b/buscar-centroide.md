# SEARCH\_CENTROID
<!-- id: buscar-centroide -->
<!-- origen: 45beb53ebda7e89754e961b0d3e8536918161add -->

Locate the centroid inside an enclosure when one or more topology files are loaded.

## Parameters

Does not accept parameters.

## Notes

This command requires one or more topology files loaded in memory. Without a loaded topology file, it displays "There is no topology file loaded" and ends.

Running _SEARCH\_CENTROID_ with topology files loaded prompts you to select the area in which to search for the centroid. Moving the cursor highlights the enclosure under it.

When you press the data button:

* If the cursor is outside all enclosures, the command clears the highlight and keeps waiting.
* If the cursor is inside an enclosure with a centroid, the command moves the view to the centroid and ends.
* If the enclosure has no centroid, the command moves the view to the centroid calculated automatically by [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md), sounds the error tone, displays a balloon indicating that a polygon without a centroid was selected, and ends.

Choose how to move the view in the **Search for centroid** configuration category, **Zoom type** option: **Center the window on the centroid** (default) or **Zoom to centroid**. For an enclosure without a centroid, the view is always centered.

Press the reset button to clear the highlight. Press the spacebar or Esc to end the command.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Search for centroid |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)<br>[SEARCH\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md) |
| Internal name | {6F6784EE-B46E-49ff-AC21-6BF418B4CA17} |
