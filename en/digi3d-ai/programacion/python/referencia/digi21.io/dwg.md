# digi21.io.dwg
<!-- id: digi21.io.dwg -->
<!-- origen: 6ed32e1b9f157ee60e01a999b691b3ce3bb990fd -->

Module: [digi21.io](README.md)

Reads and writes AutoCAD [DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) files (`.dwg`). DXF has its own module, [digi21.io.dxf](dxf.md), using the same exporter.

```python
import digi21.io.dwg as dwg
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.dwg` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Without a code table, each entity's code is its layer name. The coordinate system comes from the `.prj` matching the drawing filename. Raises `FileNotFoundError` if `path` does not exist.

A hatch (HATCH) with one exterior loop is read as a `Polygon` with holes; multiple exterior loops produce a `Complex` with a `Polygon` per exterior. See [DWG format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md#polygons-and-hatches) for loop classification.

## create

```python
create(path, digitab=None, crs="", *, version=3, template="", import_blocks=False,
       blocks_folder="", import_blocks_as_point=True, import_palette=False,
       use_drawing_colors=False) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.dwg` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. Assigns each code its layer (`iodwg:transform`). If omitted, uses an empty table and a layer named after each code. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Written to a `.prj` beside the drawing. |
| `version` | `int` | `3` | AutoCAD version, 0 through 7 inclusive: 0 = 11/12, 1 = 13, 2 = 14, 3 = 2000, 4 = 2004, 5 = 2007, 6 = 2010, 7 = 2013. Out-of-range values raise `ValueError`. |
| `template` | `str` | `""` | `.dwg` template file. Empty creates a new drawing. |
| `import_blocks` | `bool` | `False` | When opening an existing file, creates a `.bin` per block in `blocks_folder`. |
| `blocks_folder` | `str` | `""` | Folder for block `.bin` files. |
| `import_blocks_as_point` | `bool` | `True` | Converts block references into points when reading. |
| `import_palette` | `bool` | `False` | Replaces the palette with AutoCAD's when opening an existing file. |
| `use_drawing_colors` | `bool` | `False` | Entities with their own file color retain it. |

Parameters from `version` onwards are DWG's [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters, in the same order, and are keyword-only.

Exporter behavior:

- Writes each `Polygon` as a solid-fill hatch (HATCH): one loop for its boundary and one per hole. The hatch is flat: all vertices take the first vertex's Z (third example); `warnings` reports this once per code per Python process. The code's DWG **Polygons with non-constant Z** property (`<iodwg:polygon nonConstantZ="..."/>`) can write these polygons as closed 3D polylines (without holes and not in a multi-polygon `Complex`) or omit them; see [AutoCAD DWG files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md).
- Writes a polygon-only `Complex` as one hatch (fourth example), on the `Complex` code's layer: every part has that code when read back. A `Complex` with other geometries is not written: `add` returns `False` and `warnings` records the error.
- Does not write a polygon with a ring of fewer than three vertices, or a geometry that would be read back as different polygons: overlapping `Complex` parts, a part inside another but outside its holes, or a hole outside its polygon. `add` returns `False`.
- Omits geometries whose code disables export in the code table.
- Without `iodwg:transform`, writes each code on a layer named after it and reports this in `warnings`.
- **Preserves** an existing matching `.prj` beside the destination instead of writing `crs`, and reports this in `warnings`.
- Records file save errors on writer close in `warnings`.

`create` exceptions: `ValueError` for missing or invalid `crs` or out-of-range `version`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create an AutoCAD 2013 file from scratch

```python
import digi21.io.dwg as dwg
from digi21.base import Line, Point, Polygon, Text

with dwg.create("parcelas.dwg", crs="EPSG:25830", version=7) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    print(writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                          (500100, 4400080, 655), (500000, 4400000, 650)])))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
True
4 escritas, 0 rechazadas
```

The polygon is written as a hatch.

### Read and count by layer and type

```python
import collections

import digi21.io.dwg as dwg

conteo = collections.Counter()
for geometry in dwg.open("parcelas.dwg"):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (capa, tipo), n in sorted(conteo.items()):
    print(capa, tipo, n)
```

```
010123 Point 1
020402 Polygon 1
020402 Text 1
040645 Line 1
```

### Convert BinDouble to DWG

```python
import digi21.io.bindouble as bind
import digi21.io.dwg as dwg
from digi21.base import Polygon

origen = bind.open("parcelas.bind")
with dwg.create("parcelas-convertido.dwg", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")

for geometry in dwg.open("parcelas-convertido.dwg"):
    if isinstance(geometry, Polygon):
        print("Polygon:", [tuple(v) for v in geometry])
```

```
4 escritas, 0 rechazadas
Polygon: [(500000.0, 4400000.0, 650.0), (500100.0, 4400000.0, 650.0), (500100.0, 4400080.0, 650.0), (500000.0, 4400000.0, 650.0)]
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example. The source polygon has Z values 650, 652 and 655; the hatch is flat, so every vertex takes the first vertex's Z when read back.

### Write a polygon with a hole and an island

```python
import digi21.io.dwg as dwg
from digi21.base import Complex, Line, Polygon

manzana = Polygon(["020402"], [(0, 0, 10), (100, 0, 10), (100, 100, 10), (0, 100, 10), (0, 0, 10)])
manzana.add_hole(Line(["020402"], [(20, 20, 10), (80, 20, 10), (80, 80, 10), (20, 80, 10), (20, 20, 10)]))
patio = Polygon(["020402"], [(40, 40, 10), (60, 40, 10), (60, 60, 10), (40, 60, 10), (40, 40, 10)])

parcela = Complex(["020402"])
parcela.add(manzana)
parcela.add(patio)

with dwg.create("manzana.dwg", crs="EPSG:25830") as writer:
    print(writer.add(parcela))

for geometry in dwg.open("manzana.dwg"):
    print(type(geometry).__name__)
    for parte in geometry.geometries:
        print(" ", type(parte).__name__, "con", len(list(parte.holes)), "huecos")
```

```
True
Complex
  Polygon con 1 huecos
  Polygon con 0 huecos
```

The complex element becomes one hatch with three loops. On reading, the courtyard loop lies inside the block's hole, so it forms another exterior: the result is a `Complex` with two polygons.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.dxf](dxf.md)
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [DWG format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md)
