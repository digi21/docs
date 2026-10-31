# OFF\_PYTHON\_EXPRESSION
<!-- id: off-expresion-python -->
<!-- origen: 0af819bb40e19f55b27beeaecd47080fe3e981bb -->

Hide entities for which a Python expression returns true. The command evaluates the expression for each entity in all loaded drawing files and marks those that match as hidden.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Python expression. All text after the `=` sign forms the expression. Leading and trailing spaces are ignored.<br>or<br>Names of code table [selections](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), each preceded by `#` and separated by spaces. | Yes. Without parameters, the command displays the **Python expression** dialog box described in [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). |

The variable `g`, attributes (`g.codes[0].attributes`), the value the expression must return, code snippets, and errors are explained in [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). The same rules for names with `#` apply as in that command.

### Examples

To hide entities with exactly 3 vertices:

```text
OFF_PYTHON_EXPRESSION=len(g) == 3
```

To hide polygons larger than 1000 square units:

```text
OFF_PYTHON_EXPRESSION=type(g).__name__ == 'Polygon' and g.area > 1000
```

To hide entities matching the code table's "Edificios" or "Deportivo" selection:

```text
OFF_PYTHON_EXPRESSION=#Edificios #Deportivo
```

## Notes

* The command acts on all entities in all loaded drawing files.
* If the expression fails, Digi3D.AI displays the Python error once for each drawing file where it fails (with selection names, once for each selection and drawing file where it fails), and OFF\_PYTHON\_EXPRESSION hides no entities in that file based on the failed expression. With multiple selection names (`#`), OFF\_PYTHON\_EXPRESSION hides entities matching selections whose expressions do not fail. If OFF\_PYTHON\_EXPRESSION is part of a [macro](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/ejecutar-una-orden-desde-la-linea-de-comandos/macroinstrucciones.md) (`@`), Digi3D.AI runs the next command after the user closes the message box, even if OFF\_PYTHON\_EXPRESSION hid no entities. The [Errors](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md#errors) section of ON\_PYTHON\_EXPRESSION describes the errors.
* Hidden entities are not drawn in the drawing or photogrammetric window. To show them again, run [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md) or [SEE\_ALL\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md).

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Hide those that comply with Python expression... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[ON\_ONLY\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md)<br>[OFF\_ALL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md) |
| Internal name | {81442225-19EB-4577-9EE9-1E74B7A59F0F} |
