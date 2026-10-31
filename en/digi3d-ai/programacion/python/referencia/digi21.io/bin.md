# digi21.io.bin
<!-- id: digi21.io.bin -->
<!-- origen: 740c3fb86447d7a8e7721de43cd275e6b9ce4db1 -->

Module: [digi21.io](README.md)

Reads and writes [BIN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin.md) files (`.bin`), Digi3D.AI's binary format with 32-bit integer coordinates.

```python
import digi21.io.bin as bin_
```

The name `bin` conflicts with Python's `bin()` function: import it under another name, such as `bin_`.

## open

```python
open(path, digitab=None, *, precision=2, global_origin=(0.0, 0.0, 0.0)) -> DrawingFile
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.bin` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `precision` | `int` | `2` | Number of decimal places used to write the file. |
| `global_origin` | `tuple` | `(0.0, 0.0, 0.0)` | Origin `(x, y, z)` used to write the file. Added to coordinates read. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). The file stores neither precision nor global origin: pass the same `precision` and `global_origin` to `open` as to `create`. The coordinate system comes from the `.prj` matching the drawing filename.

`precision` and `global_origin` are keyword-only. If `path` does not exist, `open` raises `FileNotFoundError`; if `global_origin` contains infinity or `nan`, it raises `ValueError`.

## create

```python
create(path, digitab=None, crs="", *, precision=2, global_origin=(0.0, 0.0, 0.0)) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.bin` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Written to a `.prj` beside the drawing. |
| `precision` | `int` | `2` | Decimal places to save. Coordinates are stored as 32-bit integers: with 2 decimal places, the maximum value is ±21,474,836.47. |
| `global_origin` | `tuple` | `(0.0, 0.0, 0.0)` | Origin `(x, y, z)` subtracted from coordinates before saving. |

`precision` and `global_origin` are the format's two parameters in [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) and are keyword-only.

Exporter behavior:

- Writes points, lines, polygons, text and complex elements.
- Saves codes with **at most 6 characters**: `"VERTICE"` becomes `"VERTIC"`, and `warnings` includes one warning per truncated code.
- **Preserves** an existing matching `.prj` beside the destination instead of writing `crs`, and `warnings` reports that the existing `.prj` is preserved. To use `crs`, delete that `.prj` before creating the file.

`create` exceptions: `ValueError` for missing or invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

> [!WARNING]
> Because the file does not store `precision`, reading with a different precision scales coordinates: writing with `precision=3` and reading with the default, 2, returns coordinates multiplied by 10 (see the last example).

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a file from scratch

```python
import digi21.io.bin as bin_
from digi21.base import Line, Point, Polygon, Text

with bin_.create("parcelas.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "entidades escritas en", writer.path)
```

```
4 entidades escritas en parcelas.bin
```

The exporter also writes `parcelas.prj` with EPSG:25830.

### Read and count by type and code

```python
import collections

import digi21.io.bin as bin_

por_tipo = collections.Counter()
por_codigo = collections.Counter()

dibujo = bin_.open("parcelas.bin")
for geometry in dibujo:
    por_tipo[type(geometry).__name__] += 1
    for code in geometry.codes:
        por_codigo[code.code] += 1

print(dict(por_tipo))
print(dict(por_codigo))
```

```
{'Point': 1, 'Line': 1, 'Polygon': 1, 'Text': 1}
{'010123': 1, '040645': 1, '020402': 2}
```

### Convert BinDouble to BIN

```python
import digi21.io.bin as bin_
import digi21.io.bindouble as bind

origen = bind.open("parcelas.bind")
with bin_.create("parcelas-convertido.bin", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`crs=origen.crs` copies the source file's coordinate system.

### Write with a global origin

With `global_origin`, coordinates are saved relative to that origin. Because the file does not store it, pass the same global origin to `open` as to `create`:

```python
import digi21.io.bin as bin_
from digi21.base import Line

origen_global = (500000.0, 4400000.0, 0.0)
with bin_.create("origen.bin", crs="EPSG:25830", global_origin=origen_global) as writer:
    writer.add(Line(["040645"], [(500000.12, 4400000.25, 650.5), (500100.5, 4400080.75, 655.0)]))

print("Sin origen:", [list(g) for g in bin_.open("origen.bin")])
print("Con origen:", [list(g) for g in bin_.open("origen.bin", global_origin=origen_global)])
```

```
Sin origen: [[(0.12, 0.25, 650.5), (100.5, 80.75, 655.0)]]
Con origen: [[(500000.12, 4400000.25, 650.5), (500100.5, 4400080.75, 655.0)]]
```

`open` keeps the file open while its `DrawingFile` or any of its geometries exists: before reopening the same file, release references to the first `DrawingFile` and its geometries.

### Codes longer than 6 characters

```python
import digi21.io.bin as bin_
from digi21.base import Point

with bin_.create("codigos.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["VERTICE"]))

for aviso in writer.warnings:
    print(aviso)
print([c.code for g in bin_.open("codigos.bin") for c in g.codes])
```

```
Se ha almacenado en el archivo BIN una entidad con código desconocido: VERTICE. Se ha conservado dicho código en el archivo de dibujo.
El código VERTICE tiene más de 6 caracteres, el máximo del formato BIN. Se ha almacenado como VERTIC.
['VERTIC']
```

Exporter warnings use the installation language.

### Precision other than 2

```python
import digi21.io.bin as bin_
from digi21.base import Point

with bin_.create("precision.bin", crs="EPSG:25830", precision=3) as writer:
    writer.add(Point((1.234, 5.678, 9.0), ["010123"]))
print([list(g) for g in bin_.open("precision.bin", precision=3)])
print([list(g) for g in bin_.open("precision.bin")])
```

```
[[(1.234, 5.678, 9.0)]]
[[(12.34, 56.78, 90.0)]]
```

The file stores `1234`, `5678` and `9000`. With `precision=3`, `open` divides them by 1000; with the default, 2, by 100.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [digi21.io.bindouble](bindouble.md) — double-precision binary format without coordinate limits.
- [BIN format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin.md)
