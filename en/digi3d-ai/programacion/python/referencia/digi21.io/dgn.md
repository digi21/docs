# digi21.io.dgn
<!-- id: digi21.io.dgn -->
<!-- origen: abe6ec41ccd2140f69a49772c04bb38833e1051e -->

Module: [digi21.io](README.md)

Reads and writes MicroStation V8 [DGN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) files (`.dgn`).

```python
import digi21.io.dgn as dgn
```

> [!IMPORTANT]
> Import `digi21.io.dgn` **before** loading the code table with `DigiTab.load`. The first table loaded in the process receives `iodgn:transform` elements only if the module is already imported. Loading the table before importing `digi21.io.dgn` writes all codes with default parameters on levels named after the codes (last example).

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.dgn` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Each element has one code, its level code. The coordinate system comes from the `.prj` matching the drawing filename. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, template="", code_criteria=0, use_cell_file=False,
       cell_file="", transform_cell_levels=False, import_palette=True, use_dgn_colors=True,
       import_cells_as_point=True, spline_increment=1.0, unknown_code_format="$(Level)",
       resource_files="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.dgn` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. Assigns each code its level, color, style and weight (`iodgn:transform`). An empty one is used if omitted. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Written to a `.prj` beside the drawing. |
| `template` | `str` | `""` | `.dgn` seed file. Empty creates a new drawing. |
| `code_criteria` | `int` | `0` | Code criterion, 0 through 18 inclusive (0 is **Level**): position in the format dialog's **Code criteria** list. Out-of-range values raise `ValueError`. |
| `use_cell_file` | `bool` | `False` | Reads cells from a MicroStation cell file. |
| `cell_file` | `str` | `""` | `.cel` file. Used only if `use_cell_file` is `True`. |
| `transform_cell_levels` | `bool` | `False` | Assigns the code's level, color, style and weight to each cell element. Used only if `use_cell_file` is `True`. |
| `import_palette` | `bool` | `True` | Imports an existing file's palette on opening. |
| `use_dgn_colors` | `bool` | `True` | Entities take the DGN file color when read. |
| `import_cells_as_point` | `bool` | `True` | Converts cells into points when reading. |
| `spline_increment` | `float` | `1.0` | Vertex spacing when converting splines into polylines during reading. |
| `unknown_code_format` | `str` | `"$(Level)"` | Code name created for elements with no code table translation. |
| `resource_files` | `str` | `""` | Semicolon-separated MicroStation resource file paths. |

Parameters from `template` onwards are DGN's [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters, in the same order, and are keyword-only. See the [format page](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) for details.

Exporter behavior:

- Writes each code with the level, color, style and weight in its `iodgn:transform`:

  ```xml
  <code name="040645" description="Árbol puntual" type="0" …>
    <io>
      <iodgn:transform export="1" level="040645" colorEntity="-1" styleEntity="-1" weightEntity="-1"
                       fillColor="-1" color="1" style="0" weight="1" … />
  ```

- A geometry whose code lacks `iodgn:transform` is written on a level named after its code with default parameters, and reported in `warnings`.
- If `iodgn:transform` disables export (`export="0"`), `add` returns `False`.
- **Preserves** an existing matching `.prj` beside the destination instead of writing `crs`, and reports this in `warnings`.

`create` exceptions: `ValueError` for missing or invalid `crs` or out-of-range `code_criteria`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. `Digi.tab.xml` is a code table with `iodgn:transform` for codes `010123`, `040645` and `020402`.

### Create a file from scratch

```python
import digi21.io.dgn as dgn
from digi21.base import DigiTab, Line, Point, Polygon, Text

# Load the table after importing the module so it receives each code's DGN translation.
digitab = DigiTab.load("Digi.tab.xml")

with dgn.create("parcelas.dgn", digitab, crs="EPSG:25830") as writer:
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

### Read and count by level and type

```python
import collections

import digi21.io.dgn as dgn
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
conteo = collections.Counter()
for geometry in dgn.open("parcelas.dgn", digitab):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (codigo, tipo), n in sorted(conteo.items()):
    print(codigo, tipo, n)
```

```
010123 Point 1
020402 Polygon 1
020402 Text 1
040645 Line 1
```

### Convert BinDouble to DGN

```python
import digi21.io.bindouble as bind
import digi21.io.dgn as dgn
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = bind.open("parcelas.bind", digitab)
with dgn.create("parcelas-convertido.dgn", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example.

### Code without a DGN translation

```python
import digi21.io.dgn as dgn
from digi21.base import DigiTab, Line

digitab = DigiTab.load("Digi.tab.xml")
with dgn.create("sin-traduccion.dgn", digitab, crs="EPSG:25830") as writer:
    print(writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)])))

for aviso in writer.warnings:
    print(aviso)
print([c.code for g in dgn.open("sin-traduccion.dgn") for c in g.codes])
```

```
True
Se ha almacenado en el archivo DGN una entidad con código desconocido: "LINDE". Se ha conservado dicho código en el archivo de dibujo.
Se ha creado el nivel: LINDE
['LINDE']
```

Exporter warnings use the installation language.

### Loading the table before importing the module

```python
from digi21.base import DigiTab, Line

digitab = DigiTab.load("Digi.tab.xml")   # antes de importar el módulo de DGN
import digi21.io.dgn as dgn

with dgn.create("orden.dgn", digitab, crs="EPSG:25830") as writer:
    print(writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652)])))
print(writer.written, writer.rejected, writer.warnings)
```

```
True
1 0 ['No se han localizado parámetros para traducir a DGNv8 entidades con el código: "010123". Las entidades con este código se almacenarán en el nivel: "010123".', 'No se han localizado parámetros para traducir a DGNv8 entidades con el código: "040645". Las entidades con este código se almacenarán en el nivel: "040645".', 'No se han localizado parámetros para traducir a DGNv8 entidades con el código: "020402". Las entidades con este código se almacenarán en el nivel: "020402".', 'Se ha creado el nivel: 040645']
```

The geometry is written without the table's color, style or weight.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [DGN format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md)
