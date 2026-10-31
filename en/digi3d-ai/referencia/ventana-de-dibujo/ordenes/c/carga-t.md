# LOAD\_T
<!-- id: carga-t -->
<!-- origen: 88109c2b52ef86253bcd3f06b8131bcb0f490519 -->

Read coordinates and texts from an ASCII file and insert each text into the working file at the specified coordinates.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Name of the ASCII (American Standard Code for Information Interchange) file | File path | Yes |

Without parameters, display a dialog box for choosing the file.

## Notes

Each file line contains five values separated by spaces, tabs, or commas:

| Position | Description | Values |
| :--- | :--- | :--- |
| 1 | Point number. Not used by the command | Text |
| 2 | X coordinate | Real number |
| 3 | Y coordinate | Real number |
| 4 | Z coordinate | Real number |
| 5 | Text. Enclose text containing spaces in quotes \(" "\) | Text |

Ignore lines with fewer than five values.

For each line, create text offset from the read coordinates by [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) in X and the secondary active distance (DA2) in Y. Use active height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), angle [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), and justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification |
| Related commands | [LOAD\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-p.md) |
| Internal name | {5A175F65-0009-476e-90D9-C155593035C4} |
