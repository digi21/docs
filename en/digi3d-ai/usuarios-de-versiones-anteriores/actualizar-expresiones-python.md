# Update selection and command Python expressions
<!-- id: actualizar-expresiones-python -->
<!-- origen: 93ddfa0c572b56810b223f6533b849833ef34662 -->

Expressions written for IronPython-based Digi3D (Digi3D.NET 2022 and earlier) fail in Digi3D.AI if using old names such as `digi3DGeometry`, `g.Codes` or `Atr`, or Python 2's `<>`. This affects:

* Codes table [selections](../referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md).
* [ON\_PYTHON\_EXPRESSION](../referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md), [OFF\_PYTHON\_EXPRESSION](../referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md), [ON\_ONLY\_PYTHON\_EXPRESSION](../referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md) and [SELECT\_PYTHON\_EXPRESSION](../referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md).

Digi3D.AI evaluates expressions using bundled Python. Geometry and property names have changed. Old expressions raise errors or select no geometry.

Digi3D.NET 2023–2025 already used Python 3 and `g`. Those expressions fail if they use `Text`, `Line`, `Point`, `Polygon` or `Complex` without `digi3d.` and the environment does not import them (`NameError`), or read codes with `g.codes[0].name` (`AttributeError`). See [Update a code table's Python quality controls](actualizar-guiones-python.md#errors-after-replacing-the-environment).

## Changes

* The evaluated geometry is `g`, previously `digi3DGeometry`.
* Properties use lowercase [Digi3D.AI Python API](../programacion/python/referencia/digi21.base/geometry.md) names.
* No per-attribute variables or `Atr` function are created. First-code attributes are in `g.codes[0].attributes`.
* One Python 3 expression only: no `import`, assignments or blocks. Replace IronPython's `<>` with `!=`.

## Equivalents

| Earlier versions | Digi3D.AI |
| :--- | :--- |
| `digi3DGeometry` | `g` |
| `g.Codes[0].Name` | `g.codes[0].code` |
| `g.codes[0].name` (Digi3D.NET 2023–2025) | `g.codes[0].code` |
| `type(g) is Text` (Digi3D.NET 2023–2025 with `from digi3d import *`) | `type(g) is digi3d.Text`, or `type(g) is Text` with `from digi3d import Text` in the environment |
| `a <> b` | `a != b` |
| `g.Points.Count` | `len(g)` |
| `Propietario == 'Dylan'` (attribute-generated variable) | `g.codes[0].attributes.get('Propietario') == 'Dylan'` |
| `Atr('campo', 'valor')` | `g.codes[0].attributes.get('campo') == 'valor'` |
| `g.Area` | `g.area` |
| `g.Txt` | `g.text` |
| `g.Coordinate` | `g[0]` |
| Geometry type check | `type(g).__name__ == 'Line'` |

Notes:

* **`g.codes[0].code`** is code text. Test for a code with `g.has_code('020400')`, supporting `*` and `?`.
* **`len(g)`** counts vertices.
* **Attributes.** `g.codes[0].attributes` maps field names to values. `.get('campo')` returns `None` for a missing field; `attributes['campo']` raises an error.
* **`g.area`** exists only on lines and polygons; errors on points, texts or complexes.
* **`g.text`** exists only on texts.
* **`g[0]`** is the first `(x, y, z)` tuple. `g[0][0]` is X, `g[0][1]` Y and `g[0][2]` Z. Previously `Coordinate` returned an object with `X`, `Y` and `Z`. `g[0]` errors on vertexless geometries.
* **Type.** Names are `'Point'`, `'Text'`, `'Line'`, `'Polygon'` and `'Complex'`. Polygons are not `'Line'` here: accept both with `type(g).__name__ in ('Line', 'Polygon')`.

## Examples

Old expression:

```python
Propietario == 'Dylan' and Plantas > 3 and digi3DGeometry.Codes[0].Name == '010101' and digi3DGeometry.Points.Count == 7
```

Digi3D.AI expression:

```python
g.codes[0].attributes.get('Propietario') == 'Dylan' and g.codes[0].attributes.get('Plantas') > 3 and g.codes[0].code == '010101' and len(g) == 7
```

Old expression selecting two-vertex geometries with `hazpol` equal to `SI`:

```python
g.Points.Count == 2 and Atr('hazpol','SI')
```

Digi3D.AI expression:

```python
len(g) == 2 and g.codes[0].attributes.get('hazpol') == 'SI'
```

> `attributes.get('Plantas') > 3` fails without `Plantas`, because `None` cannot be compared with a number. Check existence first: `g.codes[0].attributes.get('Plantas') is not None and g.codes[0].attributes.get('Plantas') > 3`.

## Missing equivalents

* **Per-attribute variables.** No direct equivalent. Read each through `g.codes[0].attributes.get('campo')`, using only the geometry's first code.
* **`Atr` function.** Unavailable. Replace with `.get` comparison as above.

## Expression errors

Syntax errors or failures on a geometry display Python error text. Examples:

* Old names such as `digi3DGeometry`: `NameError`.
* `Text`, `Line`, `Point`, `Polygon` or `Complex` without `digi3d.` when not imported: `NameError`.
* Old properties such as `g.Codes` or `g.codes[0].name`: `AttributeError`.
* `g.area` on a point or `g.text` on a line: `AttributeError`.
* `attributes['campo']` for a missing field: `KeyError`.
* `<>`: `SyntaxError`.
* Expressions returning strings, lists or anything except `True`, `False`, `None` or a number.

Commands acting on loaded drawings display one message per failing file; named selections display one per failing selection and file. ON\_PYTHON\_EXPRESSION and OFF\_PYTHON\_EXPRESSION leave visibility unchanged for the failed expression, applying other successful named selections. ON\_ONLY\_PYTHON\_EXPRESSION hides all geometries except those passing another successful `#` selection. See [ON\_PYTHON\_EXPRESSION](../referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md#errors).

## Where to edit expressions

* Edit selections under [Expressions](../referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) in Code table editor. Back up the table before changes if you will still use earlier versions.
* Command expressions follow `=` or are entered in **Python expression**. Update stored command text in menus, command files or buttons.

## See also

* [ON\_PYTHON\_EXPRESSION](../referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md): expression reference, dialog snippets and errors.
* [Update a code table's Python quality controls](actualizar-guiones-python.md)
* [Geometry](../programacion/python/referencia/digi21.base/geometry.md)
