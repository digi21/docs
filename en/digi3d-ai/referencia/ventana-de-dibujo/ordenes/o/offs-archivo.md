# OFFS\_FILE
<!-- id: offs-archivo -->
<!-- origen: a4307899e18174dcdc212a179cbd4d39fba715d3 -->

Disable codes in the photogrammetric window for a specific file index.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Drawing file index | No |
| 2 … N | One or more codes, separated by spaces | No |

## Notes

Index 0 corresponds to the main drawing file, and indices 1, 2… to reference files. Index -2 applies the command to all reference files. Any other out-of-range index applies it to all files.

If you specify only the file index, the command does nothing. A parameter starting with `#` represents all codes in the code table assigned that tag.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFF\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-archivo.md)<br>[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md)<br>[ONS\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-archivo.md) |
| Internal name | {39C9AACB-78EA-4A0E-9969-F5D83985645A} |
