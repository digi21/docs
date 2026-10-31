# SELECT\_PYTHON\_EXPRESSION
<!-- id: selecciona-expresion-python -->
<!-- origen: eb2477dfda35818d3161b88aca237fd28d298c76 -->

Send entities in the active drawing file for which a Python expression returns true to the current command.

This command only works as a transparent command: run it while another command that supports multiple selection is active (such as BORRAR or MOVE), and it sends the selected entities to that command. If no current command supports multiple selection, it displays "No command is being run that admits multiple selection.", sounds an error tone, and ends without further action.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Python expression | All text after the `=` sign forms the expression. Leading and trailing spaces are ignored. Selection names with `#` are not accepted. | Yes. Without parameters, or with a blank parameter, the command displays the **Python expression** dialog box described in [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). |

The variable `g`, attributes (`g.codes[0].attributes`), the value the expression must return, and code snippets are explained in [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md).

### Example

With BORRAR active, to delete empty texts:

```text
SELECT_PYTHON_EXPRESSION=type(g).__name__ == 'Text' and g.text == ''
```

## Notes

* The command only evaluates entities in the active drawing file that are visible and within the area of interest. Deleted entities are only evaluated if [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) is enabled.
* If the expression fails, Digi3D.AI displays the Python error, and the current command receives an empty selection, even if the expression returned true for other geometries in the active file before the error. The [Errors](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md#errors) section of ON\_PYTHON\_EXPRESSION describes the errors.
* The **Immediate/Select by Python expression...** submenu lists the active code table's selections below **Introducing expression...**. Each option runs this command with that selection's expression. The options are disabled when no current command supports multiple selection.

## Command characteristics

| Command type | Transparent command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select by Python expression.../Introducing expression...<br>Immediate/Select by Python expression.../(code table selections) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) |
| Related commands | [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[SELECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md)<br>[SELECT\_BY\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md) |
| Internal name | {60FBEA4A-2F76-40BB-9201-12C85A211682} |
