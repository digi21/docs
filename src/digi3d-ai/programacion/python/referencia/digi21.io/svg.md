# digi21.io.svg
<!-- id: digi21.io.svg -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [SVG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/svg.md)
(`.svg`): dibuja las geometrías en un lienzo 2D con el color, el grosor y el relleno de cada código.

```python
import digi21.io.svg as svg
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.svg`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). SVG es 2D: la Z de todos los vértices es 0
y los polígonos se leen como líneas cerradas. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="", *, width=400) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.svg`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. **Imprescindible**: cada código necesita su elemento `iosvg:transform`. |
| `crs` | `str` | `""` | Opcional. SVG no guarda el sistema de coordenadas. |
| `width` | `int` | `400` | Ancho del lienzo en píxeles, de 1 a 100000. El alto mantiene la proporción del dibujo. Fuera de rango, `ValueError`. |

`width` es el parámetro del formato en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
y se pasa solo por nombre.

Requisito de la tabla de códigos: cada código que se escribe necesita un elemento `iosvg:transform`
con su color de trazo, su grosor y su relleno:

```xml
<code name="010123" description="Límite provincial" type="1" …>
  <io>
    <iosvg:transform stroke-width="1.000000" stroke="#ad159d" stroke-linejoin="miter"
                     stroke-linecap="butt" fill="0" fill-color="#ad159d" point-size="1.000000" />
```

Qué hace el exportador:

- Rechaza las geometrías de un código sin `iosvg:transform`: `add` devuelve `False` y `warnings` lo
  explica una vez por código.
- Escribe el archivo al cerrar el escritor.

Excepciones de `create`: `ValueError` si `width` está fuera de rango o `crs` no es válido;
`FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
En `Digi.tab.xml` los códigos `010123` y `020402` tienen `iosvg:transform`; `040645` no.

### Crear un archivo desde cero

```python
import digi21.io.svg as svg
from digi21.base import DigiTab, Line, Point, Polygon

digitab = DigiTab.load("Digi.tab.xml")

with svg.create("parcelas.svg", digitab, width=800) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
for aviso in writer.warnings:
    print(aviso)
```

```
2 escritas, 1 rechazadas
The code 040645 has no iosvg:transform element in the digitab: its geometries are not written.
```

### Leer y recorrer las geometrías

```python
import digi21.io.svg as svg
from digi21.base import DigiTab, Line

for geometry in svg.open("parcelas.svg", DigiTab.load("Digi.tab.xml")):
    cerrada = isinstance(geometry, Line) and geometry.closed
    print(type(geometry).__name__, [c.code for c in geometry.codes], "cerrada" if cerrada else "", geometry[0])
```

```
Point ['010123']  (500010.0, 4400010.0, 0.0)
Line ['020402'] cerrada (500000.0, 4400000.0, 0.0)
```

El polígono se lee como una línea cerrada y la Z es 0.

### Convertir un archivo BinDouble a SVG

```python
import digi21.io.bindouble as bind
import digi21.io.svg as svg
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = bind.open("parcelas.bind", digitab)
with svg.create("parcelas-convertido.svg", digitab) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
3 escritas, 1 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md). La
línea del código `040645` se rechaza.

### Tamaño del lienzo

```python
import xml.etree.ElementTree as ET

raiz = ET.parse("parcelas.svg").getroot()
print(raiz.get("width"), raiz.get("height"))
```

```
800px 640px
```

El dibujo mide 100 × 80 m, así que con `width=800` el alto es 640 píxeles.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato SVG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/svg.md)
