# Database errors
<!-- id: errores-de-base-de-datos -->
<!-- origen: c674180db50eea217462de0b8bf4dbed5cff0d5f -->

Return `digi3d.DatabaseFieldError` when a geometry code's database field has an incorrect value:

```python
DatabaseFieldError(message, codeIndex, field)
```

| Argument | Description |
| :--- | :--- |
| `message` | Error description. |
| `codeIndex` | Index in `geometry.codes` of the code with the incorrect field. Usually the function's `code_index`. |
| `field` | Field name. |

* During digitizing, opens a dialog to correct the field. Cancelling, or a missing code table schema, prevents geometry storage. Correcting the value reruns the code's controls.
* On demand, adds an error task to the task pane.

## Example

From [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D):

```python
@quality_control()
def atributo_bbdd_no_puede_ser_nulo(geometry, adding_geometry, code_index, nombre_atributo):
    'Comunica un error si el código que se está analizando no tiene entre sus atributos el atributo pasado por parámetros o si el valor de este atributo es nulo'
    atributosCodigo = geometry.codes[code_index].attributes

    if nombre_atributo not in atributosCodigo:
        return digi3d.GeometryError('Se esperaba que el código {} de esta geometría tuviera un atributo con nombre {} pero no lo tiene'.format(geometry.codes[code_index].code, nombre_atributo))

    if atributosCodigo[nombre_atributo] is None:
        return digi3d.DatabaseFieldError('Atributo con valor nulo', code_index, nombre_atributo)
```
