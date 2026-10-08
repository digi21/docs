# Selecciones
<!-- id: selecciones -->

Esta pestaña define selecciones con nombre. Cada selección es una expresión Python que se evalúa con cada geometría de los archivos de dibujo. Selecciona las geometrías para las que la expresión es verdadera.

Cada selección tiene un **nombre** y una **expresión**. La lista de la pestaña muestra una fila por selección, con las columnas **Nombre** y **Expresión Python**. El nombre no puede repetirse: al añadir una selección con un nombre que ya existe, el editor avisa y no la añade.

## Botones

| Botón | Acción |
| :--- | :--- |
| **Añadir** | Abre el cuadro de diálogo **Nueva selección**, donde se escriben el nombre y la expresión. |
| **Modificar** | Abre el mismo cuadro con el nombre y la expresión de la fila seleccionada. |
| **Eliminar** | Elimina la fila seleccionada. |

Los cambios se guardan en la tabla de códigos al pulsar el botón de aplicar del editor.

## Dónde se usan las selecciones

Las selecciones modifican la interfaz de Digi3D.AI. Los nombres de las selecciones de la tabla de códigos activa aparecen como opciones en dos menús:

* **Ver/(selecciones de la tabla de códigos)**: ejecuta [ON\_SOLO\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md) con la expresión de la selección.
* **Inmediato/Selecciona por expresión Python.../(selecciones de la tabla de códigos)**: ejecuta [SELECCIONA\_EXPRESION\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md) con la expresión de la selección.

Las órdenes [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md), [OFF\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md) y [ON\_SOLO\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md) también admiten el nombre de una selección como parámetro, precedido de `#`:

```text
ON_EXPRESION_PYTHON=#Edificios
```

## La expresión

* Es una única expresión de Python, no un guion: no admite `import`, asignaciones ni bloques.
* La variable `g` contiene la geometría que se está evaluando. Es un objeto [Geometry](/digi3d-ai/programacion/python/referencia/digi21.base/geometry.md) cuyo tipo concreto es `Point`, `Text`, `Line`, `Polygon` o `Complex`.
* No se crea ninguna variable por atributo de base de datos. Los atributos del primer código están en el diccionario `g.codes[0].attributes` (nombre del campo → valor). Para leer un campo, usa `g.codes[0].attributes.get('campo')`, que devuelve `None` si el campo no existe.
* La expresión debe devolver `True` o `False`. También se acepta `None` (falso) o un número (verdadero si es distinto de 0). Una cadena, una lista u otro tipo produce un error.
* La expresión puede llamar a las funciones definidas en el [entorno Python](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md) de la tabla de códigos.

| Expresión | Significado |
| :--- | :--- |
| `g.codes[0].code` | Primer código de la geometría. |
| `g.has_code('02*')` | La geometría tiene un código que cumple el patrón. Admite los comodines `*` y `?`. |
| `len(g)` | Número de vértices. |
| `g[0]` | Coordenadas `(x, y, z)` del primer vértice. |
| `type(g).__name__` | Tipo de la geometría: `'Point'`, `'Text'`, `'Line'`, `'Polygon'` o `'Complex'`. |
| `g.area`, `g.perimeter_2d` | Área y perímetro en planta. Solo en líneas y polígonos. |
| `g.closed` | Indica si la geometría está cerrada. Solo en líneas, polígonos y complejos. |
| `g.text` | Cadena de un texto. Solo en textos. |

Si la expresión falla con alguna geometría, por ejemplo con `g.area` en un punto, Digi3D.AI muestra el error de Python. Comprueba antes el tipo: `type(g).__name__ == 'Line' and g.area > 100`.

## Cuadro de diálogo Nueva selección

El cuadro tiene estos controles:

* **Nombre**: nombre de la selección.
* Campo que sigue a `return`: expresión Python.
* **Fragmentos de código** y **Añadir fragmento**: añaden al final de la expresión el fragmento elegido en el desplegable.

Los textos de ayuda del cuadro y los fragmentos que mencionan `digi3DGeometry`, `Points.Count`, `Codes[0].Name` o variables por atributo, como `hazpol == "SI"`, describen una API anterior. Escribe las expresiones con `g`, como se explica en esta página.

## Ejemplos

Todas las geometrías:

```python
True
```

La expresión se evalúa con cada geometría y devuelve siempre verdadero, así que selecciona todas.

Geometrías cuyo primer código es `020400`:

```python
g.codes[0].code == '020400'
```

Geometrías con 3 vértices:

```python
len(g) == 3
```

Geometrías cuyo campo `Plantas` es 3:

```python
g.codes[0].attributes.get('Plantas') == 3
```

Combinación de condiciones:

```python
g.codes[0].attributes.get('Propietario') == 'Dylan' and g.codes[0].attributes.get('Plantas') > 3 and g.codes[0].code == '010101' and len(g) == 7
```
