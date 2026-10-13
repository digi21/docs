# Controles de atributos
<!-- id: controles-de-atributos -->

Estos controles de calidad de
[guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) comprueban
los atributos de la geometría analizada. La página
[Repositorio de controles de calidad en Python](README.md) explica cómo se instala el archivo y cómo se
asigna un control a un código.

Los controles leen uno de estos dos diccionarios:

* `geometry.attributes`: el diccionario de atributos de la [geometría](../referencia/digi21.base/geometry.md).
* `geometry.codes[code_index].attributes`: los atributos de base de datos del
  [código](../referencia/digi21.base/featurecode.md) que se está analizando. `code_index` es el índice del
  código al que está asignado el control.

## Atributos de la geometría

| Control | Parámetros | Da error si |
|---|---|---|
| `debe_tener_asignado_un_atributo` | `nombre_atributo`, `valor_esperado`, `mensaje` | `geometry.attributes` no contiene `nombre_atributo`. El control no usa `valor_esperado` ni `mensaje`. |
| `debe_tener_asignado_un_atributo_con_valor_igual_a` | `nombre_atributo`, `valor_esperado`, `mensaje` | `geometry.attributes` no contiene `nombre_atributo`, o su valor es distinto de `valor_esperado`. |

Si el atributo no existe, los dos controles devuelven un [GeometryError](../referencia/digi3d/exceptions.md)
con el texto «Se esperaba que esta geometría tuviera un atributo con nombre … pero no lo tiene». Si el valor
no coincide, `debe_tener_asignado_un_atributo_con_valor_igual_a` devuelve un `GeometryError` con el texto de
`mensaje`.

`debe_tener_asignado_un_atributo_con_valor_igual_a` compara el valor sin convertir tipos. Un atributo de
texto `"3"` y un valor esperado escrito como número `3` son distintos.

## Atributos de base de datos del código

| Control | Parámetros | Da error si |
|---|---|---|
| `atributo_bbdd_no_puede_ser_nulo` | `nombre_atributo` | El valor del atributo es nulo. |
| `atributo_bbdd_debe_ser_igual` | `nombre_atributo`, `valor_esperado`, `mensaje` | El valor del atributo es nulo o es distinto de `valor_esperado`. |
| `atributo_bbdd_debe_ser_mayor_o_igual` | `nombre_atributo`, `valor`, `mensaje` | El valor del atributo es nulo o es menor que `valor`. |

Los tres controles devuelven primero un `GeometryError` si el código no tiene el atributo `nombre_atributo`.

El tipo de error que devuelven cuando el valor no cumple la condición es distinto:

* `atributo_bbdd_no_puede_ser_nulo` devuelve un [DatabaseFieldError](../referencia/digi3d/exceptions.md) con
  el texto «Atributo con valor nulo». En tiempo real, Digi3D.AI muestra un cuadro de diálogo para corregir
  el campo.
* `atributo_bbdd_debe_ser_igual` devuelve un `DatabaseFieldError` con el texto de `mensaje`.
* `atributo_bbdd_debe_ser_mayor_o_igual` devuelve un `GeometryError` con el texto de `mensaje`.

`atributo_bbdd_debe_ser_igual` y `atributo_bbdd_debe_ser_mayor_o_igual` convierten el valor del parámetro al
tipo del atributo antes de comparar:

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

## Véase también

* [Repositorio de controles de calidad en Python](README.md)
* [FeatureCode](../referencia/digi21.base/featurecode.md): propiedad `attributes`.
* [Excepciones](../referencia/digi3d/exceptions.md): `DatabaseFieldError`.
