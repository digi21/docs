# digi21.io.svg
<!-- id: digi21.io.svg -->
<!-- origen: 539267726aaddcfcadb06d3383eccdc8928d3acc -->

Module: [digi21.io](README.md)

Reads and writes [SVG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/svg.md) files (`.svg`): draws geometries on a 2D canvas with each code's color, weight and fill.

```python
import digi21.io.svg as svg
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.svg` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). SVG is 2D: all vertex Z values are 0 and polygons are read as closed lines. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, width=400) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.svg` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. **Essential**: each code needs an `iosvg:transform`. |
| `crs` | `str` | `""` | Optional. SVG does not save the coordinate system. |
| `width` | `int` | `400` | Canvas width in pixels, 1 through 100000 inclusive. Height preserves drawing proportions. Out-of-range values raise `ValueError`. |

`width` is the format's [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameter and is keyword-only.

Code table requirement: each written code needs an `iosvg:transform` with its stroke color, weight and fill:

```xml
<code name="010123" description="Límite provincial" type="1" …>
  <io>
    <iosvg:transform stroke-width="1.000000" stroke="#ad159d" stroke-linejoin="miter"
                     stroke-linecap="butt" fill="0" fill-color="#ad159d" point-size="1.000000" />
```

Exporter behavior:

- Rejects geometries whose code lacks `iosvg:transform`: `add` returns `False` and `warnings` explains once per code.
- Writes the file when the writer closes.

`create` exceptions: `ValueError` for out-of-range `width` or invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. In `Digi.tab.xml`, codes `010123` and `020402` have `iosvg:transform`; `040645` does not.

### Create a file from scratch

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

### Read and iterate geometries

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

The polygon is read as a closed line and Z is 0.

### Convert BinDouble to SVG

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

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example. The line with code `040645` is rejected.

### Canvas size

```python
import xml.etree.ElementTree as ET

raiz = ET.parse("parcelas.svg").getroot()
print(raiz.get("width"), raiz.get("height"))
```

```
800px 640px
```

The drawing measures 100 × 80 m, so `width=800` gives a height of 640 pixels.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [SVG format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/svg.md)
