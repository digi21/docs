# G
<!-- id: g-3 -->
<!-- origen: 4c20adda27008d157e834592905eddd9116fcdc4 -->

Enable or disable [generalization](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md).

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Finish by generalizing the line |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |

## Notes

If enabled, lines created by [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) (when finished) and [INTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter.md) are generalized using [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) and [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) before being stored.

Disabled by default.

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/On finishing current line.../Generalize (delete unneeded points) |
| Toolbar | Action when ending line |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md), [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) |
| Internal name | {F0D74387-1158-4e57-BFF0-FDC2D07B518A} |
