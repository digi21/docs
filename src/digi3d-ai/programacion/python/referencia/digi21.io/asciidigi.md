# digi21.io.asciidigi
<!-- id: digi21.io.asciidigi -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [ASCII de Digi](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md)
(`.asc`): un archivo de texto con una línea de cabecera por geometría, con su código, seguida de
sus coordenadas.

```python
import digi21.io.asciidigi as asc
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.asc`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). El sistema de coordenadas se obtiene del archivo
`.prj` con el mismo nombre que el dibujo. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="", *, decimals=3) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.asc`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se escribe en un archivo `.prj` junto al dibujo. |
| `decimals` | `int` | `3` | Número de decimales de cada coordenada. |

`decimals` es el parámetro del formato en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
y se pasa solo por nombre.

Qué hace el exportador:

- Escribe puntos, líneas, polígonos con sus contornos interiores, textos, imágenes y complejos cuyas
  geometrías son puntos o líneas. `add` devuelve `False` con cualquier otra geometría, por ejemplo un
  complejo que contiene un texto.
- Escribe los textos en la página de códigos ANSI de Windows (Windows-1252 en una instalación en
  español). Para leer el archivo desde Python, usa `encoding="mbcs"`.
- Si junto al destino ya hay un `.prj` con el mismo nombre, lo **conserva** en lugar de escribir
  `crs`, y `warnings` lo avisa.

Excepciones de `create`: `ValueError` si falta `crs` o no es válido; `FileNotFoundError` si la carpeta
de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo desde cero

```python
import digi21.io.asciidigi as asc
from digi21.base import Line, Point, Polygon, Text

with asc.create("parcelas.asc", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

### Leer, contar por tipo y sumar longitudes

```python
import collections

import digi21.io.asciidigi as asc
from digi21.base import Line

conteo = collections.Counter()
longitud = 0.0
for geometry in asc.open("parcelas.asc"):
    conteo[type(geometry).__name__] += 1
    if isinstance(geometry, Line):
        longitud += geometry.perimeter_2d

print(dict(conteo))
print(f"Longitud 2D de líneas y polígonos: {longitud:.2f}")
```

```
{'Point': 1, 'Line': 1, 'Polygon': 1, 'Text': 1}
Longitud 2D de líneas y polígonos: 488.06
```

`Polygon` hereda de `Line`, así que `isinstance(geometry, Line)` incluye los polígonos.

### Convertir un archivo BinDouble a ASCII con 2 decimales

```python
import digi21.io.asciidigi as asc
import digi21.io.bindouble as bind

origen = bind.open("parcelas.bind")
with asc.create("parcelas-convertido.asc", crs=origen.crs, decimals=2) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
with open("parcelas-convertido.asc", encoding="mbcs") as archivo:
    print(archivo.read())
```

```
4 escritas, 0 rechazadas
C=010123 1 0
500010.00 4400010.00 650.00
C=040645 3 0
500000.00 4400000.00 650.00
500100.00 4400000.00 652.00
500100.00 4400080.00 655.00
E=020402 4 0 0
500000.00 4400000.00 650.00
500100.00 4400000.00 652.00
500100.00 4400080.00 655.00
500000.00 4400000.00 650.00
T=020402 1 0
     2.50           0     0.00
500050.00 4400040.00 653.00
Parcela 12

```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).

### Complejos

```python
import digi21.io.asciidigi as asc
from digi21.base import Complex, DigiTab, Line, Point, Text

digitab = DigiTab.load("Digi.tab.xml")

con_puntos = Complex(["040645"])
con_puntos.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652)]))
con_puntos.add(Point((500050, 4400000, 651), ["010123"]))

con_texto = Complex(["040645"])
con_texto.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"]))

with asc.create("complejos.asc", digitab, crs="EPSG:25830") as writer:
    print(writer.add(con_puntos))
    print(writer.add(con_texto))
```

```
True
False
```

El complejo con un texto no se escribe. En este caso `warnings` no explica el motivo.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato ASCII de Digi](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md)
