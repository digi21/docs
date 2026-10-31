# COD
<!-- id: cod -->
<!-- origen: 07032881bbb6f31a6bf8734ebff047bd09ae557b -->

Set the code used to draw entities.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Codes to set as the active codes. A parameter starting with `#` is replaced with all codes bearing that tag in the code table. | Yes. Without parameters, display the code search dialog box. Closing it without selecting a code leaves active codes unchanged |

## Notes

Replace the active code list with the specified codes. If the first code is disabled in the code table, display a warning and leave active codes unchanged. Selecting each code runs commands assigned by the code table to that code's selection.

No element can be drawn without an active code. Changing codes while drawing an entity ends the entity drawn with the previous code and automatically starts a new entity whose first point is the completed entity's last point.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Active codes... |
| Toolbar | Code |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md)<br>[COD\_WITHOUT\_COMMAND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-sin-orden.md)<br>[COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) |
| Internal name | {A5CFB875-B477-462c-837E-CB1D54C72D3F} |
