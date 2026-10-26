# ON\_EXPRESIÓN\_PYTHON
<!-- id: on-expresion-python -->

Muestra las geometrías para las que una expresión Python devuelve verdadero. La orden evalúa la expresión con cada geometría de todos los archivos de dibujo cargados y quita la marca de oculta a las que la cumplen.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Expresión Python. Todo el texto que sigue al signo `=` forma la expresión. Se ignoran los espacios del principio y del final.<br>o<br>Nombres de [selecciones](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) de la tabla de códigos, cada uno precedido de `#` y separados por espacios. | Sí. Sin parámetros, la orden muestra el cuadro de diálogo **Expresión Python**. |

La orden usa nombres de selecciones solo si el primer parámetro empieza por `#`. En ese caso ignora los parámetros que no empiezan por `#`. Los nombres no distinguen mayúsculas de minúsculas. Un nombre que no existe en la tabla de códigos se ignora sin aviso. Si el nombre lleva espacios, se escribe entre comillas: `ON_EXPRESION_PYTHON="#Zonas verdes"`.

## La expresión

* Es una única expresión de Python 3, no un guion: no admite `import`, asignaciones ni bloques. Python 3 no admite el operador `<>`: usa `!=`.
* La variable `g` contiene la geometría que se está evaluando. Es un objeto [Geometry](/digi3d-ai/programacion/python/referencia/digi21.base/geometry.md) cuyo tipo concreto es `Point`, `Text`, `Line`, `Polygon` o `Complex`.
* No se crea ninguna variable por atributo. Los atributos de base de datos del primer código están en el diccionario `g.codes[0].attributes` (nombre del campo → valor). Si los atributos aún no se han leído, leer `attributes` consulta la base de datos.
* La expresión debe devolver `True` o `False`. También se acepta `None` (falso) o un número (verdadero si es distinto de 0). Una cadena, una lista u otro tipo produce un error.
* La expresión puede usar las funciones integradas de Python (como `len` o `type`) y los nombres que define el [entorno Python](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md) de la tabla de códigos, incluidas sus funciones. Digi3D.AI ejecuta el entorno en el módulo `__main__` del intérprete de Python al abrir el archivo de dibujo y, cuando la orden se ejecuta desde la línea de comandos, un menú o una macroinstrucción, evalúa la expresión en ese mismo módulo.
* Si la evaluación de la expresión consulta un nombre que no está definido en el módulo `__main__` (la variable `g` y los nombres del entorno) ni entre los nombres integrados de Python, Python lanza un error `NameError`. Por ejemplo, el entorno que se descarga de GitHub contiene la línea `import digi3d`, así que la expresión puede usar `digi3d.Text`; para escribir `Text` sin el prefijo `digi3d.`, el entorno debe importar ese nombre con una línea como `from digi3d import Text`.

## Cuadro de diálogo

![Cuadro de diálogo Expresión Python](../../../../../images/expresion-python.png)

El cuadro de diálogo es el mismo para [OFF\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md), [ON\_SOLO\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md) y [SELECCIONA\_EXPRESION\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md). Escribe la expresión en el campo que sigue a `return`. El cuadro de diálogo no recuerda la expresión de la vez anterior.

Para insertar un fragmento, elígelo en el desplegable **Fragmentos de código** y pulsa **Añadir fragmento**. El fragmento se añade al final de la expresión. Los fragmentos son:

| Fragmento | Significado |
| :--- | :--- |
| `==`, `!=`, `<`, `>`, `<=`, `>=`, `and`, `and not`, `not`, `True`, `False` | Operadores y valores de Python |
| `type(g).__name__ == 'Point'` (también `'Line'`, `'Text'`, `'Polygon'` y `'Complex'`) | Tipo de la geometría. Un polígono no es `'Line'`. |
| `g.has_code('code')` | La geometría tiene el código indicado. Admite los comodines `*` y `?`. |
| `len(g)` | Número de vértices |
| `g[0]` | Coordenadas `(x, y, z)` del primer vértice |
| `g.codes[0].attributes.get('field')` | Valor del campo `field` del primer código, o `None` si no existe |
| `g.area`, `g.perimeter_2d`, `g.closed` | Área, perímetro en planta y si está cerrada. Solo en líneas y polígonos; `closed` también en complejos. |
| `g.text` | Cadena de un texto. Solo en textos. |

Sustituye `code` y `field` por el código y el campo reales.

## Errores

Si la expresión tiene un error de sintaxis, o lanza una excepción con alguna geometría, Digi3D.AI muestra un cuadro de mensaje que empieza por el tipo y el texto del error de Python, por ejemplo `NameError: name 'Text' is not defined`. Lanzan una excepción, por ejemplo, `g.area` en un punto y `attributes['campo']` si el campo no existe.

Después del error, la orden deja de evaluar la expresión en el archivo de dibujo en el que se ha producido el error y no muestra ninguna geometría de ese archivo por esa expresión, aunque la expresión haya devuelto verdadero al evaluar otras geometrías del mismo archivo antes del error. Con varios nombres de selecciones (`#`), la orden muestra las geometrías que cumplen las selecciones cuya expresión no falla. Si quedan otros archivos de dibujo cargados, la orden evalúa la expresión en el siguiente archivo, así que el cuadro de mensaje aparece una vez por cada archivo de dibujo en el que falla la expresión. Con nombres de selecciones (`#`), aparece una vez por cada selección y cada archivo de dibujo en los que falla la expresión.

Si la orden forma parte de una [macroinstrucción](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/ejecutar-una-orden-desde-la-linea-de-comandos/macroinstrucciones.md) (`@`), Digi3D.AI ejecuta la orden siguiente de la macroinstrucción después de que el usuario cierre el cuadro de mensaje.

La página [Actualizar los controles de calidad Python de una tabla de códigos](/digi3d-ai/usuarios-de-versiones-anteriores/actualizar-guiones-python.md#errores-después-de-sustituir-el-entorno) explica los errores `NameError` y `AttributeError` de las expresiones escritas para versiones anteriores de Digi3D.

Para evitar errores:

* Comprueba antes el tipo. `and` solo evalúa la segunda condición si la primera es verdadera: `type(g).__name__ == 'Line' and g.area > 100`.
* Lee los campos con `.get('campo')`, que devuelve `None` si el campo no existe.

### Ejemplos

Para mostrar las geometrías que tienen exactamente 3 vértices:

```text
ON_EXPRESION_PYTHON=len(g) == 3
```

Para mostrar las geometrías cuyo primer código es '010101', que tienen 7 vértices y cuyo campo Propietario de la base de datos vale 'Dylan':

```text
ON_EXPRESION_PYTHON=g.codes[0].code == '010101' and len(g) == 7 and g.codes[0].attributes.get('Propietario') == 'Dylan'
```

Para mostrar las geometrías que cumplen la selección "Edificios" de la tabla de códigos:

```text
ON_EXPRESION_PYTHON=#Edificios
```

Para mostrar las geometrías que cumplen la selección "Edificios" o la selección "Deportivo":

```text
ON_EXPRESION_PYTHON=#Edificios #Deportivo
```

## Observaciones

* La orden actúa sobre todas las geometrías de todos los archivos de dibujo cargados, incluidas las borradas.
* Mostrar u ocultar por expresión es una marca de cada geometría. Es independiente de la visibilidad por código: una geometría cuyo código está apagado sigue sin dibujarse.
* Las geometrías ocultas no se dibujan en la ventana de dibujo ni en la ventana fotogramétrica. [VER\_TODAS\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md) quita la marca de oculta a todas las geometrías.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Las que cumplan con expresión Python... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md)<br>[OFF\_TODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md)<br>[ON\_SOLO\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md)<br>[SELECCIONA\_EXPRESION\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md)<br>[VER\_TODAS\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md) |
| Nombre interno | {CC07AD2F-1CB4-485E-B8D0-A8B1F449DCB0} |
