# TOL\_ANG
<!-- id: tol-ang -->
<!-- origen: 80aa36ac846ebc9fb35ff7ee3dc4c472fbda8392 -->

Set the _angular tolerance factor_ for [generalization](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md).

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Angular tolerance in degrees, or `?` to display the current value | Real number | Yes |

Without parameters, the command prompts for the value in the message bar. It accepts only a typed value: digitizing a point plays an error sound and continues waiting for the value.

### Examples

`TOL_ANG=45`

Set the angular tolerance to 45 degrees.

`TOL_ANG=?`

Display the current angular tolerance.

## Notes

Enter the value in **degrees**. The initial value when Digi3D.AI starts is 4.58.

Angular tolerance applies only to a span in which no intermediate vertex's distance from the straight line through the span's ends exceeds the [linear tolerance](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md). In that case, [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md) and [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md) retain the intermediate vertex with the greatest angular deviation from that line if it exceeds **TOL\_ANG**, then split the span in two at that vertex.

## Command characteristics

| Command type | [Real variable](/digi3d-ai/referencia/ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) — linear generalization tolerance |
| Related commands | [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md)<br>[GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md)<br>[TOL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol.md) |
| Internal name | {CAF1F0F2-7F03-4a0f-804C-B9E411772E09} |
