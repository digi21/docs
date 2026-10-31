# OVERLAP
<!-- id: solape -->
<!-- origen: 80a9f3e87f3eeceec8727beb5bb85b2f6298e994 -->

Set the window overlap percentage.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Numeric value | Real number | Yes |

### Notes

_OVERLAP_ is used by [RGHZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomder.md), [LFTZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomizq.md), [ZOOMUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomsup.md), and [LOWERZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoominf.md).

The value is a percentage and defaults to 10%.

Without parameters, the status bar displays a text box for entering the value. Only a typed value is accepted: digitizing a point plays an error sound and continues waiting for the value.

### Examples

`OVERLAP=25`

Set the overlap between views to 25% of the window width for horizontal movement and 25% of its height for vertical movement.

`OVERLAP=?`

Display the current overlap.

## Command characteristics

| Command type | [Real variable](/digi3d-ai/referencia/ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {8F0D7669-FD0D-45eb-8387-3877087EFA6F} |
