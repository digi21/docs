# COD\_WITHOUT\_COMMAND
<!-- id: cod-sin-orden -->
<!-- origen: 539b47c7c64ee19ff33bef3b076c129010c1be50 -->

Replace the active code list, like [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md).

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Codes to set as the active codes. A parameter starting with `#` is replaced with all codes bearing that tag in the code table. | Yes. Without parameters, display the code search dialog box |

## Notes

Unlike [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md), this command does not run commands assigned by the code table to code selection: it only changes active codes and their attributes.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md)<br>[COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) |
| Internal name | {6533DB11-E184-45cb-B78F-2C98D3FA7C77} |
