# DETECT\_LOOPS
<!-- id: detectar-bucles -->
<!-- origen: 5dd5b307e855e7bcb9f28a94105aca979bd7b57e -->

Detect loops \(self-intersections\) in Line and Polygon entities.

## Parameters

| Parameter | Description |
| :--- | :--- |
| Code | Code or codes of entities to analyze \(optional\). Each code is matched exactly; wildcards are unsupported. Include all codes bearing a tag by prefixing its name with a number sign \(\#\), for example \#vías\_de\_comunicación |

## Notes

Analyze visible lines and polygons \(including holes\) within the area of interest. Closing a line at its first vertex is not marked as an error.

Without codes, wait for a multiple selection and analyze the selected entities.

If self-intersections are detected, add entries to the [Tasks pane](/digi3d-ai/referencia/paneles/tareas.md). Each contains a subentry for every detected self-intersection. Double-click the main entry to show the entire entity, or a self-intersection subentry to center the drawing window on its coordinates.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Detect loops/\(one option per tag\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DETECT\_LOOPS\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-bucles-lineas-visibles.md) |
| Internal name | {74442DE2-4C89-4463-899F-0F775302497C} |
