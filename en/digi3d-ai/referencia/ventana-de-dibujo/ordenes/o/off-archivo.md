# OFF\_FILE
<!-- id: off-archivo -->
<!-- origen: 6d3e6c5ee22f0cad76c53031b4ad9d28f1f193ac -->

Disable codes in the drawing window for a specific file index.

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
| Related commands | [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)<br>[OFFS\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-archivo.md)<br>[ON\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-archivo.md) |
| Internal name | {8EC41C27-BC99-4967-A21F-EDECBAFAD30A} |
