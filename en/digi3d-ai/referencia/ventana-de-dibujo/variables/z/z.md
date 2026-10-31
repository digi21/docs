# Z
<!-- id: z-3 -->
<!-- origen: c04c478d775eaa9c9990e5ccabd5b86529f22625 -->

Assign a value to the Z coordinate.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Z value | Yes |

### Example

`Z=30`

Set the active Z to 30 in the drawing's Z coordinate units.

## Notes

This command is normally used when entering data with the mouse or digitizer.

When entering coordinates with the stereoplotter, Z is taken automatically from the Z wheel.

Without parameters, the status bar displays a text box for entering the value.

Assigning Z enables [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md), moves the cursor to the specified Z, and locks the Z coordinate.

## Command characteristics

| Variable type | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Z Coordinate/Set active Z coordinate |
| Toolbar | Z Coordinate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) |
| Internal name | {01BEC16F-3059-4103-934D-835BBBD4887B} |
