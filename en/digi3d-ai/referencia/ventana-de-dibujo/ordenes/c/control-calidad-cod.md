# QUALITY\_CONTROL\_COD
<!-- id: control-calidad-cod -->
<!-- origen: fbfb7f273cba8b838803cf6f96d70f6bdab74683 -->

Perform quality control analysis by code.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Codes of the entities to analyze. A parameter starting with `#` is replaced with all codes that have that tag in the code table. | Yes. Without parameters, the command displays a dialog box for selecting codes |

## Notes

The command analyzes entities in the active drawing file that are not deleted, are visible, are within the area of interest, and have one of the specified codes.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Quality control/Analyze quality control/By code... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [QUALITY\_CONTROL\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-entidades-visibles.md)<br>[QUALITY\_CONTROL\_SELECTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-seleccion.md) |
| Internal name | {EF96CDAC-A31F-4A6C-84FA-BAEA89F6F61D} |
