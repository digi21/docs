# ONS\_FILE
<!-- id: ons-archivo -->
<!-- origen: c458ef25473b2599b905d476fe48e3bb4dbc2f9e -->

Enable codes in the photogrammetric window for a specific file index.

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
| Related commands | [OFFS\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-archivo.md)<br>[ON\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-archivo.md)<br>[ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md) |
| Internal name | {24FB18B7-6510-4AFB-A539-A53B719D3045} |
