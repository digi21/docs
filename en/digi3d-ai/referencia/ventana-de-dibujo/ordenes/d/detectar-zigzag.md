# DETECT\_ZIGZAG
<!-- id: detectar-zigzag -->
<!-- origen: 54371d806624e563a3398d3a763ff3ba70736f0d -->

Analyze lines and detect zigzags at their vertices.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

A zigzag is a vertex whose preceding and following vertices have identical X, Y, and Z coordinates: the line doubles back on itself.

The command analyzes visible lines with any of the specified codes, or all visible lines if no code is specified. For each line with zigzags, it creates an error task at the first affected vertex.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Detect ZigZag/Visible lines |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {EC558A4F-3869-46D3-8C17-0EF403A37260} |
