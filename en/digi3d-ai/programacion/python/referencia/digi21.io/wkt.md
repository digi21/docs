# digi21.io.wkt
<!-- id: digi21.io.wkt -->
<!-- origen: 41a3d5dc8df0e3378abcfe8ef0a7edc895876934 -->

Module: [digi21.io](README.md)

Reads and writes [WKT](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/wkt.md) geometry files (`.wkt`): one *Well-Known Text* geometry per line, without codes or a coordinate system.

```python
import digi21.io.wkt as wkt
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.wkt` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). The file stores no codes: all geometries are read with code `WKT`. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, width=400) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.wkt` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `crs` | `str` | `""` | Optional. The file does not save the coordinate system. |
| `width` | `int` | `400` | Format command line parameter, greater than 0. Unused by the exporter. |

Exporter behavior:

- Writes `POINT Z`, `LINESTRING Z` and `POLYGON Z` with 4 decimal places.
- Writes text as points without text content.

`create` exceptions: `ValueError` for `width` below 1 or invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a file from scratch

```python
import digi21.io.wkt as wkt
from digi21.base import Line, Point, Polygon, Text

with wkt.create("parcelas.wkt") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas")
with open("parcelas.wkt", encoding="utf-8") as archivo:
    print(archivo.read())
```

```
4 escritas
POINT Z (500010.0000 4400010.0000 650.0000)
LINESTRING Z (500000.0000 4400000.0000 650.0000, 500100.0000 4400000.0000 652.0000, 500100.0000 4400080.0000 655.0000)
POLYGON Z ((500000.0000 4400000.0000 650.0000, 500100.0000 4400000.0000 652.0000, 500100.0000 4400080.0000 655.0000, 500000.0000 4400000.0000 650.0000))
POINT Z (500050.0000 4400040.0000 653.0000)

```

### Read and count by type and code

```python
import collections

import digi21.io.wkt as wkt

conteo = collections.Counter()
for geometry in wkt.open("parcelas.wkt"):
    conteo[(type(geometry).__name__, geometry.codes[0].code)] += 1
print(dict(conteo))
```

```
{('Point', 'WKT'): 2, ('Line', 'WKT'): 1, ('Polygon', 'WKT'): 1}
```

Text is read as a point and original codes are lost.

### Convert BinDouble to WKT

```python
import digi21.io.bindouble as bind
import digi21.io.wkt as wkt

with wkt.create("parcelas-convertido.wkt") as writer:
    for geometry in bind.open("parcelas.bind"):
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [WKT format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/wkt.md)
