# digi21.io.vec
<!-- id: digi21.io.vec -->
<!-- origen: badc2638f5caaa3636e69b81ced75bce4d114241 -->

Module: [digi21.io](README.md)

Reads and writes [VEC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md) drawing files (`.vec`). Geometries are organized in numbered layers; no coordinate system is stored.

```python
import digi21.io.vec as vec
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.vec` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table with each code's `iovec:transform`. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Without `iovec:transform`, each geometry's code is its layer number. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.vec` file path. An existing file is replaced on writer close. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. Assigns each code its layer (`iovec:transform`). An empty one is used if omitted. |
| `crs` | `str` | `""` | Optional. The file does not save the coordinate system. |

The format has no [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters.

Exporter behavior:

- Writes points, lines, polygons and text. **Does not write complex elements**: `add` returns `False`.
- Takes each code's layer from `iovec:transform`. Without `iovec:transform`, assigns a new layer, numbering from 0 in code encounter order.
- Writes a temporary file beside `path` and replaces the destination on writer close. If replacement fails, `close` raises `RuntimeError`.

`create` exceptions: `ValueError` for invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a file from scratch

```python
import digi21.io.vec as vec
from digi21.base import Line, Point, Polygon, Text

with vec.create("parcelas.vec") as writer:
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

### Read and count by layer and type

```python
import collections

import digi21.io.vec as vec

conteo = collections.Counter()
for geometry in vec.open("parcelas.vec"):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (capa, tipo), n in sorted(conteo.items()):
    print(capa, tipo, n)
```

```
0 Point 1
1 Line 1
2 Polygon 1
2 Text 1
```

Without `iovec:transform`, codes `010123`, `040645` and `020402` are assigned to layers 0, 1 and 2 respectively. Reading returns each geometry's layer number as its code.

### Convert BinDouble to VEC

```python
import digi21.io.bindouble as bind
import digi21.io.vec as vec

with vec.create("parcelas-convertido.vec") as writer:
    for geometry in bind.open("parcelas.bind"):
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example.

### A complex element is not written

```python
import digi21.io.vec as vec
from digi21.base import Complex, Line

bloque = Complex(["040645"])
bloque.add(Line(["040645"], [(0, 0, 0), (10, 0, 0)]))

with vec.create("complejo.vec") as writer:
    print(writer.add(bloque))
print(writer.warnings)
```

```
False
['The format cannot store a complex.']
```

The format does not support complex elements. Preserve their contents by writing each child geometry separately (`for hija in bloque: writer.add(hija)`).

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [VEC format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md)
