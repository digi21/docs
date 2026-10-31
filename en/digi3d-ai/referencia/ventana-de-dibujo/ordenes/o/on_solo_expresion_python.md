# ON\_ONLY\_PYTHON\_EXPRESSION
<!-- id: on-solo-expresion-python -->
<!-- origen: 0664771fea72863fec898fc26def02b38b14b5dd -->

Show only entities for which a Python expression returns true. In each loaded drawing file, the command hides all entities and then shows those matching the expression.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Python expression. All text after the `=` sign forms the expression. Leading and trailing spaces are ignored.<br>or<br>Names of code table [selections](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), each preceded by `#` and separated by spaces. Entities matching any of them are shown. | Yes. Without parameters, the command displays the **Python expression** dialog box described in [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). |

The variable `g`, attributes (`g.codes[0].attributes`), the value the expression must return, and code snippets are explained in [ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). If none of the names with `#` exist in the code table, the command changes nothing.

The **View** menu lists the active code table's selections. Each option runs this command with that selection's expression.

### Examples

To show only entities with exactly 3 vertices:

```text
ON_ONLY_PYTHON_EXPRESSION=len(g) == 3
```

To show only entities with code 020400 whose Plantas field equals 3:

```text
ON_ONLY_PYTHON_EXPRESSION=g.has_code('020400') and g.codes[0].attributes.get('Plantas') == 3
```

To show only entities matching the "Edificios" or "Deportivo" selection:

```text
ON_ONLY_PYTHON_EXPRESSION=#Edificios #Deportivo
```

## Notes

* If the expression fails, Digi3D.AI displays the Python error once for each drawing file where it fails (with selection names, once for each selection and drawing file where it fails), and **all entities in that file remain hidden**, except those matching another selection specified with `#` whose expression does not fail. To show hidden entities in the file where the expression failed, run [SEE\_ALL\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md). If the command is part of a [macro](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/ejecutar-una-orden-desde-la-linea-de-comandos/macroinstrucciones.md) (`@`), Digi3D.AI runs the next command after the user closes the message box, and entities hidden by ON\_ONLY\_PYTHON\_EXPRESSION remain hidden. The [Errors](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md#errors) section of ON\_PYTHON\_EXPRESSION describes the errors.
* Hiding and showing by expression is independent of visibility by code: an entity whose code is disabled is still not drawn.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Only those that comply with Python expression...<br>View/(code table selections) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFF\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md)<br>[ON\_PYTHON\_EXPRESSION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[ONONLY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/onsolo.md)<br>[SEE\_ALL\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md) |
| Internal name | {59456486-1146-4F25-B8BD-3435FD2FF715} |
