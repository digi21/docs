# DETECT\_BBDD\_ATTRIBUTE\_ERRORS\_CASES
<!-- id: detectar-errores-atributos-bbdd-cases -->
<!-- origen: 66ba5ac56e2cdbae273f57b26052d6eaff9c23ef -->

Detect lines and polygons in two different drawing files with geometric continuity but different database attributes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

At least two drawing files must be loaded; otherwise, display an error message.

Compare every drawing file pair. Lines have geometric continuity when one endpoint coincides with the other's endpoint; polygons have continuity when adjacent. For each continuous pair with differing database attributes, create an error task with one subtask per entity. Ignore fields marked for exclusion when comparing attributes.

- Without parameters, compare only entity pairs with the same codes.
- With parameters, compare entities bearing any specified code, even if the two entities have different codes.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ADJUST\_DRAWING\_FILE\_LIMITS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-limites-archivos-dibujo.md)<br>[TOPOLOGICAL\_CONTROL\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md)<br>[DETECT\_LINE\_CONTINUITY\_ERRORS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-continuidad-lineas-cases.md) |
| Internal name | {FF569210-FB8B-478B-8337-8A4AE54449F2} |
