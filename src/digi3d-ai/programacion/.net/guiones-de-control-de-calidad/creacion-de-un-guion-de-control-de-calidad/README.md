# Creación de un guion de control de calidad
<!-- id: creacion-de-un-guion-de-control-de-calidad -->

Un control de calidad es una función de Python definida en la pestaña [Entorno Python](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md) de la tabla de códigos.

## Requisitos de la función

* Está decorada con `@quality_control()`. Digi3D.AI define este decorador al iniciar el intérprete de Python: marca la función con el atributo `_is_quality_control_`, y el cuadro de diálogo **Controles de calidad** del Editor de Tablas de Códigos lista solo las funciones marcadas.
* Sus tres primeros parámetros son `geometry`, `adding_geometry` y `code_index`. Digi3D.AI los pasa por nombre.
* Su cadena de documentación (*docstring*) describe el control. El Editor de Tablas de Códigos la muestra junto al nombre de la función.
* Puede tener más parámetros. Al asignar la función a un código, el cuadro de diálogo **Parámetros del control de calidad** pide un valor para cada uno.

| Parámetro | Valor |
| :--- | :--- |
| `geometry` | La geometría que se analiza: un [Geometry](/digi3d-ai/programacion/python/referencia/digi21.base/geometry.md) del módulo `digi3d` (`Point`, `Line`, `Polygon`, `Text` o `Complex`). |
| `adding_geometry` | `True` si la geometría se está digitalizando y todavía no está guardada en el archivo de dibujo; `False` si el análisis es bajo demanda. |
| `code_index` | Índice, en `geometry.codes`, del código cuyos controles se ejecutan. |

## Asignación a un código

La propiedad **Controles de calidad a aplicar** del código guarda una línea por control. Cada línea es el nombre de la función y, si la función tiene parámetros adicionales, un diccionario de Python entre paréntesis con sus valores:

```
debe_tener_coordenadas_z_crecientes
atributo_bbdd_debe_ser_igual({"nombre_atributo":"TIPO", "valor_esperado":3, "mensaje":"Tipo incorrecto"})
```

Digi3D.AI ejecuta las líneas en orden. Por cada línea, evalúa el texto entre paréntesis como expresión de Python, añade los argumentos `geometry`, `adding_geometry` y `code_index`, y llama a la función con todos ellos por nombre.

## Resultado de la función

La función devuelve (con `return`, no con `raise`) uno de estos valores:

* `None`: la geometría cumple el control. Es lo que devuelve una función que termina sin `return` o con `return` sin valor.
* Un objeto `digi3d.GeometryError`, `digi3d.GeometryRelationError`, `digi3d.GeometryWarning` o `digi3d.DatabaseFieldError`.
* Una lista de esos objetos, para comunicar varios problemas. Una lista vacía equivale a `None`.

Si la función devuelve un error o una advertencia, Digi3D.AI no ejecuta el resto de líneas del código. Si la función lanza una excepción de Python, Digi3D.AI muestra el mensaje de la excepción en un cuadro de mensaje y tampoco ejecuta el resto de líneas.

Los tipos y su efecto están en [Tipos de errores](tipos-de-errores/README.md).

## Ejemplo

Esta función, del repositorio [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D), comprueba que el código analizado tiene un atributo de base de datos con el valor esperado:

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

`compara_valor_distinto_texto` es una función auxiliar del mismo archivo `guiones.py`, que compara el valor del atributo con el esperado sin tener en cuenta el tipo (texto o número).