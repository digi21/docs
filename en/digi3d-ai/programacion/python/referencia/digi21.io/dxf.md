# digi21.io.dxf
<!-- id: digi21.io.dxf -->
<!-- origen: 3ac0e235a27184124b6c5891918b3a2c3e96b77a -->

Module: [digi21.io](README.md)

Reads and writes AutoCAD DXF (`.dxf`) in ASCII or binary. Uses the same exporter as [digi21.io.dwg](dwg.md); see its [DWG format page](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md).

```python
import digi21.io.dxf as dxf
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | ASCII or binary `.dxf` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Without a code table, each entity's code is its layer name. The coordinate system comes from the `.prj` matching the drawing filename. Raises `FileNotFoundError` if `path` does not exist.

A hatch (HATCH) is read as in [digi21.io.dwg](dwg.md#open): a `Polygon` with holes, or a polygon `Complex` for multiple exterior loops.

## create

```python
create(path, digitab=None, crs="", *, version=3, binary=False, import_blocks_as_point=True,
       use_drawing_colors=False) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.dxf` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. Assigns each code its layer (`iodwg:transform`). If omitted, uses an empty table and a layer named after each code. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Written to a `.prj` beside the drawing. |
| `version` | `int` | `3` | AutoCAD version, 0 through 7 inclusive: 0 = 11/12, 1 = 13, 2 = 14, 3 = 2000, 4 = 2004, 5 = 2007, 6 = 2010, 7 = 2013. Out-of-range values raise `ValueError`. |
| `binary` | `bool` | `False` | Writes binary DXF instead of ASCII. |
| `import_blocks_as_point` | `bool` | `True` | Converts block references into points when reading. |
| `use_drawing_colors` | `bool` | `False` | Entities with their own file color retain it. |

Parameters from `version` onwards are DXF's [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters, in the same order, and are keyword-only.

Exporter behavior:

- Writes each `Polygon` and polygon-only `Complex` as a solid-fill hatch (HATCH), like [digi21.io.dwg](dwg.md#create). The hatch is flat: all vertices take the first vertex's Z, unless the code's **Polygons with non-constant Z** property specifies otherwise. A `Complex` containing other geometries is not written: `add` returns `False` and `warnings` records the error.
- Omits geometries whose code disables export in the code table.
- Without `iodwg:transform`, writes each code on a layer named after it and reports this in `warnings`.
- **Preserves** an existing matching `.prj` beside the destination instead of writing `crs`, and reports this in `warnings`.

`create` exceptions: `ValueError` for missing or invalid `crs` or out-of-range `version`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a file from scratch

```python
import digi21.io.dxf as dxf
from digi21.base import Line, Point, Polygon, Text

with dxf.create("parcelas.dxf", crs="EPSG:25830") as writer:
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

The parcel is written as a hatch.

### Read and classify by type

```python
import digi21.io.dxf as dxf
from digi21.base import Line, Polygon, Text

for geometry in dxf.open("parcelas.dxf"):
    capa = geometry.codes[0].code
    if isinstance(geometry, Text):
        print(capa, "texto:", geometry.text)
    elif isinstance(geometry, Polygon):
        print(capa, "polígono con", len(list(geometry.holes)), "huecos")
    elif isinstance(geometry, Line):
        print(capa, "línea cerrada" if geometry.closed else "línea abierta", len(geometry), "vértices")
    else:
        print(capa, type(geometry).__name__)
```

```
010123 Point
040645 línea abierta 3 vértices
020402 polígono con 0 huecos
020402 texto: Parcela 12
```

`Polygon` derives from `Line`, so the example tests for `Polygon` first.

### Convert BinDouble to DXF

```python
import digi21.io.bindouble as bind
import digi21.io.dxf as dxf

origen = bind.open("parcelas.bind")
with dxf.create("parcelas-convertido.dxf", crs=origen.crs, version=7) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("No se ha escrito:", type(geometry).__name__, [c.code for c in geometry.codes])

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example. No geometry is rejected: the polygon becomes a hatch.

### Write binary DXF

```python
import digi21.io.dxf as dxf
from digi21.base import Line

with dxf.create("binario.dxf", crs="EPSG:25830", binary=True) as writer:
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652)]))

with open("binario.dxf", "rb") as archivo:
    print(archivo.read(22))
print([type(g).__name__ for g in dxf.open("binario.dxf")])
```

```
b'AutoCAD Binary DXF\r\n\x1a\x00'
['Line']
```

`open` reads binary DXF without additional parameters.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.dwg](dwg.md)
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [DWG format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md)
