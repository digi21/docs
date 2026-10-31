# digi21.io.asciidigi
<!-- id: digi21.io.asciidigi -->
<!-- origen: afa78af18bf81367aecf2ebb1bf45b97239d05cd -->

Module: [digi21.io](README.md)

Reads and writes [Digi ASCII](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md) files (`.asc`): text files with one header per geometry, containing its code, followed by coordinates.

```python
import digi21.io.asciidigi as asc
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.asc` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). The coordinate system comes from the `.prj` matching the drawing filename. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, decimals=3) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.asc` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Written to a `.prj` beside the drawing. |
| `decimals` | `int` | `3` | Number of decimal places for each coordinate. |

`decimals` is the format parameter in [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) and is keyword-only.

Exporter behavior:

- Writes points, lines, polygons with interior rings, text, images and complex elements containing points or lines. `add` returns `False` for other geometries, such as a complex element containing text.
- Writes text using the Windows ANSI code page (Windows-1252 on a Spanish installation). Use `encoding="mbcs"` to read it from Python.
- **Preserves** an existing matching `.prj` beside the destination instead of writing `crs`, and reports this in `warnings`.

`create` exceptions: `ValueError` for missing or invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a file from scratch

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

### Read, count by type and sum lengths

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

`Polygon` inherits from `Line`, so `isinstance(geometry, Line)` includes polygons.

### Convert BinDouble to ASCII with 2 decimal places

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

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example.

### Complex elements

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

The complex element containing text is not written. In this case `warnings` does not explain why.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [Digi ASCII format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md)
