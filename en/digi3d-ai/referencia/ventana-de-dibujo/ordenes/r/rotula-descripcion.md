# TAG\_DESCRIPTION
<!-- id: rotula-descripcion -->
<!-- origen: 96549e7ec434a7eb48a8944e5476124a431fb2c1 -->

Label point entities with text containing each point code's description.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

Without parameters, display a dialog box for selecting codes.

Create text for each visible point within the area of interest bearing a specified code. Text contains the code table description and is placed at the point offset by [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) in X and DA2 in Y. Use height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), rotation [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), and the active code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification |
| Related commands | [TAG\_CADASTRAL\_REFERENCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-referencia-catastral.md)<br>[TAG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-z.md) |
| Internal name | {D0F1F901-2E44-4DAE-8A5F-4730713E4C1B} |
