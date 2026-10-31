# TOL
<!-- id: tol -->
<!-- origen: 1a355c5368f6c0377b3f879bef23a2e5dbb80868 -->

Set the _tolerance factor_ for [generalization](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md).

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Tolerance in meters, or `?` to display the current value | Real number | Yes |

Without parameters, the command prompts for the value in the message bar. You can also digitize two points to assign the distance between them.

### Examples

`TOL=10`

Set the tolerance factor to 10 m.

`TOL=?`

Display the current tolerance factor.

## Notes

Enter the _tolerance factor_ in meters. Its initial value is the generalization tolerance from the drawing file settings.

[GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md) and [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md) use the Douglas-Peucker algorithm. For each span of the entity, they calculate the distance of each intermediate vertex from the **straight line through the span's ends**, rather than from the segment joining the preceding and following vertices:

* If any vertex is farther than **TOL**, retain the farthest vertex and split the span in two at that vertex.
* If no intermediate vertex's distance from the straight line through the span's ends exceeds the linear tolerance, apply the angular tolerance [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md).

`GEN` measures distance in 3D space, including Z; `GEN_2D` measures only in the XY plane.

## Command characteristics

| Command type | [Real variable](/digi3d-ai/referencia/ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) — angular generalization tolerance |
| Related commands | [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md)<br>[GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md)<br>[TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol-ang.md) |
| Internal name | {57647E08-06CB-448b-BD9A-639C5008A176} |
