# digi21.io.bindouble
<!-- id: digi21.io.bindouble -->
<!-- origen: 881050e2513e2f89a04d3ce6b62517b1d84cedbe -->

Module: [digi21.io](README.md)

Reads and writes [double-precision BIN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md) files (`.bind`), Digi3D.AI's binary format with double-precision floating-point coordinates. The coordinate system is stored in the header.

```python
import digi21.io.bindouble as bind
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.bind` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). `DrawingFile.crs` is the coordinate system in the header.

Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, data_model="", connection_string="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.bind` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Stored in the header, not a `.prj`. |
| `data_model` | `str` | `""` | Data model name for the attribute database. |
| `connection_string` | `str` | `""` | Database connection string. Empty means no database. |

`data_model` and `connection_string` are the format's two parameters in [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) and are keyword-only. A value containing both single and double quotes raises `ValueError`.

The exporter writes all [digi21.base](../digi21.base/README.md) geometry types: points, text, lines, polygons and complex elements.

`create` exceptions: `ValueError` for missing or invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. Examples using an attribute database (`data_model` and `connection_string`) are not included.

### Create a file from scratch

```python
import digi21.io.bindouble as bind
from digi21.base import Line, Point, Polygon, Text

with bind.create("parcelas.bind", crs="EPSG:25830") as writer:
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

This `parcelas.bind` is the source for conversion examples on other [digi21.io](README.md) pages.

### Read and count by type and code

```python
import collections

import digi21.io.bindouble as bind

dibujo = bind.open("parcelas.bind")
print(dibujo.crs[:30])

conteo = collections.Counter()
for geometry in dibujo:
    conteo[(type(geometry).__name__, geometry.codes[0].code)] += 1

for (tipo, codigo), n in sorted(conteo.items()):
    print(f"{tipo:8} {codigo}: {n}")
```

```
PROJCS["ETRS89 / UTM zone 30N"
Line     040645: 1
Point    010123: 1
Polygon  020402: 1
Text     020402: 1
```

### Convert DXF to BinDouble

```python
import digi21.io.bindouble as bind
import digi21.io.dxf as dxf

origen = dxf.open("plano.dxf")
with bind.create("plano.bind", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
3 escritas, 0 rechazadas
```

`plano.dxf` contains a line, point and text, with its coordinate system in `plano.prj`.

### Coordinate system in the header

```python
import os

import digi21.io.bindouble as bind
from digi21.base import Point

with bind.create("sin-prj.bind", crs="EPSG:4258") as writer:
    writer.add(Point((-3.7038, 40.4168, 657.0), ["010123"]))

print(os.path.exists("sin-prj.prj"))
print(bind.open("sin-prj.bind").crs[:24])
```

```
False
GEOGCS["ETRS89",DATUM["E
```

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [digi21.io.bin](bin.md)
- [Double-precision BIN format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md)
