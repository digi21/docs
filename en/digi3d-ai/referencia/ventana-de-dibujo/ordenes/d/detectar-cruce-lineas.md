# DETECT\_LINE\_CROSSING
<!-- id: detectar-cruce-lineas -->
<!-- origen: 599e2940917f2905fcff997b85a4451b253ced54 -->

Create an error task for each detected intersection between lines with the specified codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | One or more codes, separated by spaces | Yes |

## Notes

The command analyzes visible lines and polygons \(including their holes\) within the area of interest with any specified code. Each code is matched exactly. To include all codes assigned a tag, prefix the tag name with a number sign \(\#\).

If you do not specify any codes, the command waits for you to select a set of entities through multiple selection, then analyzes the selected entities.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DETECT\_VISIBLE\_LINES\_CROSSING](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-visibles.md)<br>[DETECT\_LINE\_CROSSING\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-z.md)<br>[SPIT\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas.md) |
| Internal name | {0077B774-71F9-4366-A651-539D8A6CFAF9} |
