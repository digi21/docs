# COD+
<!-- id: cod-mas -->
<!-- origen: 54ae05784c838fb0d4e9fee7db13d8a9d1038879 -->

Add one or more codes to the active code list.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Codes to add to the active code list. A parameter starting with `#` is replaced with all codes bearing that tag in the code table. | Yes. Without parameters, display the code search dialog box and add the selected codes |

## Notes

When adding each code, run the commands assigned by the code table to selection of that code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/More/Insert active codes... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CHNG\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md)<br>[COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md)<br>[COD\_WITHOUT\_COMMAND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-sin-orden.md) |
| Internal name | {3308F3D4-4A61-4088-B7C5-6B6B14F4B000} |
