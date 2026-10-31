# TAG\_Z
<!-- id: rotula-z -->
<!-- origen: 680ac29c921fbea499c303ebc8af6633dfd6dc6e -->

Label one or more points with their Z coordinates.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 … N | Code or codes of points to label | Code identifier | Yes |

## Notes

Without parameters, the command displays a dialog box to select codes.

The command creates a text containing the Z coordinate of each visible point within the area of interest that has any specified code. Text is positioned at the point with an X offset equal to the main [active distance](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) and a Y offset equal to the secondary active distance \(DA2\). If DA2 has no value, the command uses AD for Y as well.

Text height, justification, and rotation come from [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md); its number of decimal places comes from [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md); and it receives the active code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Tag Z based on code points... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification |
| Related commands | [HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cota.md)<br>[TAG\_CONTOURS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-curvas.md)<br>[TAG\_DESCRIPTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-descripcion.md) |
| Internal name | {C0859A31-1DBC-4a5f-A13A-65260F5C5318} |
