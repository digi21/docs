# CHNG\_MAXPOINTS
<!-- id: camb-maxpuntos -->
<!-- origen: c724527ed873a2ca73e47d4c4ded641bcfa953f4 -->

Split linear entities exceeding the specified number of vertices into spans with fewer vertices.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Codes of the lines to split. Each code can be `#etiqueta` to specify all codes with that tag | Yes |

Without parameters, the command prompts you to select a line. With parameters, it splits all visible, undeleted lines within the area of interest that have one of the specified codes, without prompting for data.

## Notes

[MAXPOINTS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) determines the maximum number of vertices for linear entities. Set MAXPOINTS before running _CHNG\_MAXPOINTS_. If MAXPOINTS is less than 2, the command modifies no lines.

Run CHNG\_MAXPOINTS on a specific entity or on all entities with a given code.

### Example

MAXPOINTS=500

CHNG\_MAXPOINTS=020126

The command splits all linear entities with code 020126 into spans of 500 vertices. From the second span onward, each span starts at the previous span's last vertex. The final span can have fewer vertices.

If quality control rejects any new span, the entire original line is preserved and no spans are added. With multiple lines, each is handled independently.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [MAXPOINTS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) — maximum number of points for an entity type<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | No related commands |
| Internal name | {68887B83-3512-412c-8100-B2F134A73248} |

## Video
