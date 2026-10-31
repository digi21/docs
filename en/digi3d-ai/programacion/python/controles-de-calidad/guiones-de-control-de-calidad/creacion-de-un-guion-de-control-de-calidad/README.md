# Creating a quality control script
<!-- id: creacion-de-un-guion-de-control-de-calidad -->
<!-- origen: 5711644bc35a1d934577891b4871db625fff2bc1 -->

A quality control is a Python function defined under [Python environment](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md) in the codes table.

## Function requirements

* Decorated with `@quality_control()`. Digi3D.AI defines this decorator when starting Python: it marks the function with `_is_quality_control_`. The editor's **Quality controls** dialog lists only marked functions.
* Its first three parameters are `geometry`, `adding_geometry` and `code_index`, passed by name.
* Its *docstring* describes the control and appears beside the function name in the Codes Table Editor.
* Additional parameters are allowed. **Quality control parameters** requests each value when assigning the function to a code.

| Parameter | Value |
| :--- | :--- |
| `geometry` | The analyzed [Geometry](/digi3d-ai/programacion/python/referencia/digi21.base/geometry.md) from `digi3d` (`Point`, `Line`, `Polygon`, `Text` or `Complex`). |
| `adding_geometry` | `True` during digitizing before the geometry is saved; `False` for on-demand analysis. |
| `code_index` | Index in `geometry.codes` of the code whose controls run. |

## Assigning to a code

**Quality controls to apply** stores one line per control: function name followed, for additional parameters, by a parenthesized Python dictionary of values:

```
debe_tener_coordenadas_z_crecientes
atributo_bbdd_debe_ser_igual({"nombre_atributo":"TIPO", "valor_esperado":3, "mensaje":"Tipo incorrecto"})
```

Lines run in order. For each, evaluates the parenthesized text as a Python expression, adds `geometry`, `adding_geometry` and `code_index`, then calls the function with all arguments by name.

## Function result

Return one of these values using `return`, rather than `raise`:

* `None`: passes the control. Also returned by finishing without `return` or using a bare `return`.
* `digi3d.GeometryError`, `digi3d.GeometryRelationError`, `digi3d.GeometryWarning` or `digi3d.DatabaseFieldError`.
* A list of those objects to report multiple problems. An empty list equals `None`.

An error or warning stops remaining lines for that code. A raised Python exception displays its message and also stops remaining lines.

See [Error types](tipos-de-errores/README.md) for types and effects.

## Example

From [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D): checks that the analyzed code has a database attribute with the expected value:

```python
@quality_control()
def atributo_bbdd_debe_ser_igual(geometry, adding_geometry, code_index, nombre_atributo, valor_esperado, mensaje):
    'Comunica un error si el código que se está analizando no tiene entre sus atributos el atributo pasado por parámetros o si el valor de este atributo no coincide con el del valor esperado'
    atributosCodigo = geometry.codes[code_index].attributes

    if nombre_atributo not in atributosCodigo:
        return digi3d.GeometryError('Se esperaba que el código {} de esta geometría tuviera un atributo con nombre {} pero no lo tiene'.format(geometry.codes[code_index].code, nombre_atributo))

    if atributosCodigo[nombre_atributo] is None or compara_valor_distinto_texto(atributosCodigo[nombre_atributo], valor_esperado):
        return digi3d.DatabaseFieldError(mensaje, code_index, nombre_atributo)
```

`compara_valor_distinto_texto` is a helper in the same `guiones.py`, comparing attribute and expected values regardless of type (text or number).
