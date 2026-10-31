# JOIN\_XYZ\_TABLE
<!-- id: unir-xyz-tabla -->
<!-- origen: 93e4fae3eece1a801190e5b2b6c88321591e9dd0 -->

Join lines bearing codes specified as parameters when they have the same Z at the joining node and only two entities meet there.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | No |

## Notes

Work on visible lines in the active drawing file, joining only lines with compatible codes. A parameter starting with `#` represents all code table codes assigned that tag.

Without parameters, sound the error tone and do nothing.

Each line is joined at most once per execution. Run several times to join a chain of more than two lines.

If Digi3D.AI rejects any new line, join no lines and retain all originals.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Join lines if the Z coincides/Into nodes with two entities/Visible lines<br>Geometric analysis/Join lines if the Z coincides/Into nodes with two entities/(one option per code table tag) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [JOIN\_LINES\_TABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-tabla.md)<br>[JOIN\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz.md) |
| Internal name | {40963DC8-B7E2-4EE8-B7E9-4CF9D3FCFC65} |
