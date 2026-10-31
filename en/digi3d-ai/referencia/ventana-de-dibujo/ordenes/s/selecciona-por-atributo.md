# SELECT\_BY\_ATTRIBUTE
<!-- id: selecciona-por-atributo -->
<!-- origen: 591701b64f7761750995a4dcbe351e4c5ec8783a -->

Send entities whose database attribute matches the specified value to the active command.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Attribute name | No |
| 2 | Value to compare with the attribute | No |

## Notes

A command accepting multiple selection must already be running. Otherwise, or if either parameter is missing, display a warning and end.

Traverse all loaded drawing files, excluding deleted or invisible entities and those outside the area of interest. For each entity, take the first code with the specified attribute and compare its value with parameter 2: integer and Boolean attributes as integers, real attributes as real numbers, and text attributes ignoring case. Send matching entities to the active command.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesBaseDatos.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SELECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md)<br>[SELECT\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md) |
| Internal name | {694241B1-2330-4D49-8405-4BAC0684E9A9} |
