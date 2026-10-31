# SELECT\_COD
<!-- id: selecciona-cod -->
<!-- origen: 3aa4d325bcd1b059252915355b1e1b7393e5ce1b -->

Select all entities bearing any specified code.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1...n | Codes to select | Code name, or `#etiqueta` for all codes bearing that tag | Yes; without codes, display a dialog box for selecting them |

## Notes

A command accepting multiple selection must already be running.

Search the active drawing file for visible entities within the area of interest. Deleted entities are selected only when [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) is enabled.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select based on code... |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ENTITIES\_OF\_INTEREST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/entidades-de-interes.md)<br>[SELECT\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md)<br>[SELECT\_BY\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md) |
| Internal name | {EDFDC360-67F1-4954-B873-1FA761933B79} |
