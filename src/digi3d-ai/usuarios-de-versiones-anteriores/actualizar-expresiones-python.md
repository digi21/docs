# Actualizar las expresiones Python de selecciones y órdenes
<!-- id: actualizar-expresiones-python -->

Las expresiones Python escritas para las versiones de Digi3D basadas en IronPython (Digi3D.NET 2022 y anteriores) fallan en Digi3D.AI si usan nombres de Digi3D.NET de esas versiones, como `digi3DGeometry`, `g.Codes` o `Atr`, o el operador `<>` de Python 2. La incompatibilidad de las expresiones basadas en IronPython con Digi3D.AI afecta a las expresiones de:

* Las [selecciones](../referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) de la tabla de códigos.
* Las órdenes [ON\_EXPRESION\_PYTHON](../referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md), [OFF\_EXPRESION\_PYTHON](../referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md), [ON\_SOLO\_EXPRESION\_PYTHON](../referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md) y [SELECCIONA\_EXPRESION\_PYTHON](../referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md).

Digi3D.AI evalúa la expresión con el intérprete de Python incluido en el programa. Cambian los nombres de la geometría y de sus propiedades. La expresión antigua falla con un error de Python, o no selecciona ninguna geometría.

Las versiones de Digi3D.NET publicadas entre 2023 y 2025 ya evaluaban las expresiones con Python 3 y la variable `g`. Las expresiones de esas versiones fallan en Digi3D.AI si usan `Text`, `Line`, `Point`, `Polygon` o `Complex` sin el prefijo `digi3d.` y el entorno Python de la tabla de códigos no importa esos nombres (error `NameError`), o si leen el texto de un código con `g.codes[0].name` (error `AttributeError`). La página [Actualizar los controles de calidad Python de una tabla de códigos](actualizar-guiones-python.md#errores-después-de-sustituir-el-entorno) explica cómo corregir los dos errores.

## Qué cambia

* La geometría que se está evaluando está en la variable `g`. Antes se llamaba `digi3DGeometry`.
* Las propiedades se escriben en minúsculas y con los nombres de la [interfaz de programación de aplicaciones (API) de Python de Digi3D.AI](../programacion/python/referencia/digi21.base/geometry.md).
* Digi3D.AI no crea una variable por cada atributo de base de datos ni la función `Atr`. Los atributos del primer código están en el diccionario `g.codes[0].attributes`.
* La expresión es una única expresión de Python 3. No admite `import`, asignaciones ni bloques. Python 3 no admite el operador `<>` de IronPython: usa `!=`.

## Equivalencias

| Versiones anteriores | Digi3D.AI |
| :--- | :--- |
| `digi3DGeometry` | `g` |
| `g.Codes[0].Name` | `g.codes[0].code` |
| `g.codes[0].name` (Digi3D.NET 2023 a 2025) | `g.codes[0].code` |
| `type(g) is Text` (Digi3D.NET 2023 a 2025, con la línea `from digi3d import *` en el entorno Python) | `type(g) is digi3d.Text`, o `type(g) is Text` si el entorno Python contiene la línea `from digi3d import Text` |
| `a <> b` | `a != b` |
| `g.Points.Count` | `len(g)` |
| `Propietario == 'Dylan'` (variable creada a partir del atributo) | `g.codes[0].attributes.get('Propietario') == 'Dylan'` |
| `Atr('campo', 'valor')` | `g.codes[0].attributes.get('campo') == 'valor'` |
| `g.Area` | `g.area` |
| `g.Txt` | `g.text` |
| `g.Coordinate` | `g[0]` |
| Comprobación del tipo de la geometría | `type(g).__name__ == 'Line'` |

Notas sobre cada equivalencia:

* **`g.codes[0].code`** es el texto del código. Para comprobar si la geometría tiene un código, usa `g.has_code('020400')`. Admite los comodines `*` y `?`.
* **`len(g)`** es el número de vértices de la geometría.
* **Atributos.** `g.codes[0].attributes` es un diccionario (nombre del campo → valor). `.get('campo')` devuelve `None` si el campo no existe. `attributes['campo']` produce un error si el campo no existe.
* **`g.area`** solo existe en líneas y polígonos. En un punto, un texto o un complejo produce un error.
* **`g.text`** solo existe en textos.
* **`g[0]`** es una tupla `(x, y, z)` con el primer vértice. `g[0][0]` es la X, `g[0][1]` la Y y `g[0][2]` la Z. Antes, `Coordinate` devolvía un objeto con las propiedades `X`, `Y` y `Z`. `g[0]` produce un error en una geometría sin vértices.
* **Tipo.** Los nombres posibles son `'Point'`, `'Text'`, `'Line'`, `'Polygon'` y `'Complex'`. Un polígono no es `'Line'` con esta comparación: para aceptar líneas y polígonos, escribe `type(g).__name__ in ('Line', 'Polygon')`.

## Ejemplos

Expresión antigua:

```python
Propietario == 'Dylan' and Plantas > 3 and digi3DGeometry.Codes[0].Name == '010101' and digi3DGeometry.Points.Count == 7
```

Expresión para Digi3D.AI:

```python
g.codes[0].attributes.get('Propietario') == 'Dylan' and g.codes[0].attributes.get('Plantas') > 3 and g.codes[0].code == '010101' and len(g) == 7
```

Expresión antigua, que selecciona las geometrías con 2 vértices y el campo `hazpol` igual a `SI`:

```python
g.Points.Count == 2 and Atr('hazpol','SI')
```

Expresión para Digi3D.AI:

```python
len(g) == 2 and g.codes[0].attributes.get('hazpol') == 'SI'
```

> `attributes.get('Plantas') > 3` produce un error si la geometría no tiene el campo `Plantas`, porque `None` no se puede comparar con un número. Si hay geometrías sin ese campo, comprueba que el campo existe antes de comparar su valor con un número: `g.codes[0].attributes.get('Plantas') is not None and g.codes[0].attributes.get('Plantas') > 3`.

## Equivalencias que no existen

* **Variables por atributo.** No hay equivalente directo. Cada atributo se lee con `g.codes[0].attributes.get('campo')`. Solo se leen los atributos del primer código de la geometría.
* **Función `Atr`.** No existe. Se sustituye por la comparación con `.get`, como en la tabla.

## Errores en las expresiones

Si la expresión tiene un error de sintaxis, o falla con alguna geometría, Digi3D.AI muestra un mensaje con el texto del error de Python. Fallan, por ejemplo:

* Una expresión que usa un nombre antiguo, como `digi3DGeometry`: `NameError`.
* Una expresión que usa `Text`, `Line`, `Point`, `Polygon` o `Complex` sin el prefijo `digi3d.`, si el entorno Python de la tabla de códigos no importa ese nombre: `NameError`.
* Una propiedad antigua, como `g.Codes` o `g.codes[0].name`: `AttributeError`.
* `g.area` en un punto, o `g.text` en una línea: `AttributeError`.
* `attributes['campo']` si la geometría no tiene ese campo: `KeyError`.
* Una expresión con el operador `<>`: `SyntaxError`.
* Una expresión que devuelve una cadena, una lista u otro tipo que no sea `True`, `False`, `None` o un número.

En las órdenes que actúan sobre los archivos de dibujo cargados, el mensaje aparece una vez por cada archivo de dibujo en el que falla la expresión; con nombres de selecciones, aparece una vez por cada selección y archivo de dibujo en los que falla. En el archivo en el que falla la expresión, ON\_EXPRESION\_PYTHON y OFF\_EXPRESION\_PYTHON no cambian la visibilidad de ninguna geometría por esa expresión (con varios nombres de selecciones, aplican las selecciones cuya expresión no falla), y ON\_SOLO\_EXPRESION\_PYTHON deja ocultas todas las geometrías del archivo, salvo las que cumplen otra selección indicada con `#` cuya expresión no falla. Más detalles en [ON\_EXPRESION\_PYTHON](../referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md#errores).

## Dónde cambiar las expresiones

* Edita las selecciones en la pestaña [Expresiones](../referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) del Editor de tablas de códigos. Haz una copia de seguridad del archivo de la tabla de códigos antes de editar las selecciones si vas a seguir usando la tabla con versiones anteriores.
* Las expresiones de las órdenes se escriben tras el signo `=` o en el cuadro de diálogo **Expresión Python**. Si las guardaste en un menú, un archivo de órdenes o un botón, actualiza el texto de la orden.

## Véase también

* [ON\_EXPRESION\_PYTHON](../referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md): referencia completa de la expresión, los fragmentos del cuadro de diálogo y los errores.
* [Actualizar los controles de calidad Python de una tabla de códigos](actualizar-guiones-python.md)
* [Geometry](../programacion/python/referencia/digi21.base/geometry.md)
