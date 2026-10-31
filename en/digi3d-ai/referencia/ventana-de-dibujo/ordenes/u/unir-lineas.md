# JOIN\_LINES
<!-- id: unir-lineas -->
<!-- origen: ad4c129d696edd86ead5d2fc9831545452bd3b5d -->

Join visible lines sharing any specified code.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 … N | Codes of lines to join, separated by spaces | — | Yes |

## Notes

Join lines in the active drawing file at nodes where their endpoints coincide, provided their codes are compatible. A parameter starting with `#` represents all code table codes bearing that tag.

Without parameters, wait for entity selection and join the selected lines.

A dynamically generated submenu lists each code table tag; choose one to join visible lines bearing codes with that tag.

If Digi3D.AI rejects any new line, join no lines and retain all originals.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CONNECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-cod.md)<br>[JOIN\_LINES\_TABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-tabla.md)<br>[JOIN\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-visibles.md)<br>[JOIN\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz.md) |
| Internal name | {F4EF84A6-0F2D-4D42-8D9D-3F08B2C4CEF5} |
