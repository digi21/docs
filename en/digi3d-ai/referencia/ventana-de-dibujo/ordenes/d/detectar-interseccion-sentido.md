# DETECT\_INTERSECTION\_DIRECTION
<!-- id: detectar-interseccion-sentido -->
<!-- origen: d1c6821d1387c6c72e150eea4ac1d2030cd6abeb -->

Detect lines and polygons meeting at a node with incompatible digitizing directions.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

Group endpoints of visible, undeleted lines and polygons within the area of interest bearing any specified code. At each point where endpoints of two or more entities coincide in X and Y, create an error task if two entities start at that point or end at that point.

Codes support \* and ? wildcards. To include all codes bearing a tag, prefix its name with a number sign \(\#\).

Without codes, wait for a multiple selection and analyze the selected entities.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Detect changes of direction at intersections/Visible lines<br>Geometric analysis/Detect changes of direction at intersections/\(one option per tag\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CHNG\_DIREC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen.md) |
| Internal name | {42A2D514-D535-48E6-A486-A2B78B98906D} |
