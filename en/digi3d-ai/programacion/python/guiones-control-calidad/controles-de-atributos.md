# Attribute controls
<!-- id: controles-de-atributos -->
<!-- origen: 2fdd8ffa53f133165060ba81f007a19f9ff2f0b2 -->

These [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) controls check analyzed geometry attributes. [Python quality control repository](README.md) explains installation and code assignment.

Read one of two dictionaries:

* `geometry.attributes`: the [geometry](../referencia/digi21.base/geometry.md) attribute dictionary.
* `geometry.codes[code_index].attributes`: the analyzed [code](../referencia/digi21.base/featurecode.md)'s database attributes. `code_index` identifies the code assigned the control.

## Geometry attributes

| Control | Parameters | Error if |
| --- | --- | --- |
| `debe_tener_asignado_un_atributo` | `nombre_atributo`, `valor_esperado`, `mensaje` | `geometry.attributes` lacks `nombre_atributo`. Ignores `valor_esperado` and `mensaje`. |
| `debe_tener_asignado_un_atributo_con_valor_igual_a` | `nombre_atributo`, `valor_esperado`, `mensaje` | `geometry.attributes` lacks `nombre_atributo` or its value differs from `valor_esperado`. |

Both return [GeometryError](../referencia/digi3d/exceptions.md) for a missing attribute: “This geometry was expected to have an attribute named … but does not”. A mismatched value makes `debe_tener_asignado_un_atributo_con_valor_igual_a` return `GeometryError` with `mensaje`.

`debe_tener_asignado_un_atributo_con_valor_igual_a` compares without type conversion: text `"3"` differs from number `3`.

## Code database attributes

| Control | Parameters | Error if |
| --- | --- | --- |
| `atributo_bbdd_no_puede_ser_nulo` | `nombre_atributo` | Attribute value is null. |
| `atributo_bbdd_debe_ser_igual` | `nombre_atributo`, `valor_esperado`, `mensaje` | Value is null or differs from `valor_esperado`. |
| `atributo_bbdd_debe_ser_mayor_o_igual` | `nombre_atributo`, `valor`, `mensaje` | Value is null or below `valor`. |

All three first return `GeometryError` if the code lacks `nombre_atributo`.

Failed value conditions return different types:

* `atributo_bbdd_no_puede_ser_nulo` returns [DatabaseFieldError](../referencia/digi3d/exceptions.md) with “Attribute with null value”. In real time, opens a field correction dialog.
* `atributo_bbdd_debe_ser_igual` returns `DatabaseFieldError` with `mensaje`.
* `atributo_bbdd_debe_ser_mayor_o_igual` returns `GeometryError` with `mensaje`.

`atributo_bbdd_debe_ser_igual` and `atributo_bbdd_debe_ser_mayor_o_igual` convert parameter values to the attribute type before comparison:

```python
def compara_valor_distinto_texto(valor, texto):
    'Convierte el argumento texto al tipo del argumento valor y devuelve verdadero si son distintos'
    return valor != type(valor)(texto)

@quality_control()
def atributo_bbdd_debe_ser_igual(geometry, adding_geometry, code_index, nombre_atributo, valor_esperado, mensaje):
    atributosCodigo = geometry.codes[code_index].attributes

    if nombre_atributo not in atributosCodigo:
        return digi3d.GeometryError('Se esperaba que el código {} de esta geometría tuviera un atributo con nombre {} pero no lo tiene'.format(geometry.codes[code_index].code, nombre_atributo))

    if atributosCodigo[nombre_atributo] is None or compara_valor_distinto_texto(atributosCodigo[nombre_atributo], valor_esperado):
        return digi3d.DatabaseFieldError(mensaje, code_index, nombre_atributo)
```

## See also

* [Python quality control repository](README.md)
* [FeatureCode](../referencia/digi21.base/featurecode.md): `attributes`.
* [Exceptions](../referencia/digi3d/exceptions.md): `DatabaseFieldError`.
