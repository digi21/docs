# REPLACE\_TEXT
<!-- id: reemplazar-texto -->
<!-- origen: fa7810021ea1f5e060cb4bdad16f2f3715705a89 -->

Replace text with other text.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code | No |
| 2 | Text to find | No |
| 3 | Replacement text | No |

## Notes

Search the active drawing file for visible texts within the area of interest bearing the specified code and containing the search text. Replace every occurrence with the replacement text. Matching is case-sensitive.

Enclose search or replacement text containing spaces in double quotes.

If parameters are missing, display a warning and end. If any texts change, show how many were modified.

Handle each text independently: if Digi3D.AI rejects a modified text, retain its original unchanged; accepted texts are modified.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DELETE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-texto.md)<br>[CHNG\_CHARACTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-caracter.md)<br>[CHNG\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-texto.md) |
| Internal name | {ABC62815-50DB-4119-9446-C3B83D55D3F5} |
