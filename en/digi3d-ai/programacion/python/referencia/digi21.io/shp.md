# digi21.io.shp
<!-- id: digi21.io.shp -->
<!-- origen: 7680d2ba917b49953179fbd228e7266533a244fe -->

Module: [digi21.io](README.md)

Reads and writes ESRI [shapefiles](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md) (`.shp`, `.shx`, `.dbf`, `.prj` and `.cpg`). A shapefile has one geometry type, so the exporter writes **one layer per code** in the destination folder.

```python
import digi21.io.shp as shp
```

> [!IMPORTANT]
> Import `digi21.io.shp` **before** loading the code table with `DigiTab.load`. The first table loaded in the process receives `ioshp:transform` elements only if the module is already imported.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | Path of one `.shp` in the folder. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md) with geometries from **all layers in the folder** of `path`, in layer order. `DrawingFile.path` is the folder. Polygon vertices are read in the reverse order to writing: the format stores exterior rings clockwise. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, precision=0, encoding=0xFF) -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | Path of a `.shp` in the destination folder. Only the folder is used: layer names come from the code table. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. **Essential**: each code needs an `ioshp:transform` and a database table. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Written to each new layer's `.prj`. |
| `precision` | `int` | `0` | Decimal places for coordinate rounding, 0 through 12 inclusive. With 0, no rounding. Out-of-range values raise `ValueError`. |
| `encoding` | `int` | `0xFF` | Language driver ID (LDID) for `.dbf` encoding, 0 through 255 inclusive. With `0xFF`, `.cpg` declares `UTF-8`; with `0x57`, `1252`. Out-of-range values raise `ValueError`. |

`precision` and `encoding` are the format's two [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters and are keyword-only.

Code table requirements for each written code:

- An assigned **database table** (`table`) existing in the database schema (`databaseSchema`), with a numeric primary key.
- An `ioshp:transform` with the layer name (`nameSHP`) and geometry type (`typeNewTable`: 11 = points, 13 = lines, 15 = polygons, all with Z).

```xml
<databaseSchema>
  <table name="Prueba" description="">
    <field name="Id" title="Id" type="N" length="11" primaryKey="1" />
    <field name="Nombre" title="Nombre" type="C" length="50" />
  </table>
</databaseSchema>
<codes>
  <code name="040645" description="Árbol puntual" type="0" table="Prueba" …>
    <io>
      <ioshp:transform export="1" nameSHP="shp_040645" typeNewTable="13" />
```

Exporter behavior:

- Rejects geometries whose code does not meet requirements; `warnings` identifies what is missing.
- Rejects geometries of an incompatible layer type (text in a polygon layer, a line in a point layer).
- Replaces same-name layers and preserves other layers in the folder. Replaced layers **retain their `.prj`**; `warnings` reports any folder `.prj` with a different coordinate system.

`create` exceptions: `ValueError` for missing or invalid `crs` or out-of-range `precision` or `encoding`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. `Digi.tab.xml` is the code table above: codes `010123`, `040645` and `020402` map to `shp_010123` (points), `shp_040645` (lines) and `shp_020402` (polygons).

### Create layers from scratch

```python
import os

import digi21.io.shp as shp
from digi21.base import DigiTab, Line, Point, Polygon

digitab = DigiTab.load("Digi.tab.xml")
os.makedirs("capas", exist_ok=True)

with shp.create("capas/parcelas.shp", digitab, crs="EPSG:25830", precision=3) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
print(sorted(f for f in os.listdir("capas") if f.endswith(".shp")))
```

```
3 escritas, 0 rechazadas
['shp_010123.shp', 'shp_020402.shp', 'shp_040645.shp']
```

The name `parcelas.shp` is unused.

### Read every layer in the folder

```python
import collections

import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
conteo = collections.Counter()
for geometry in shp.open("capas/shp_040645.shp", digitab):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (codigo, tipo), n in sorted(conteo.items()):
    print(codigo, tipo, n)
```

```
010123 Point 1
020402 Polygon 1
040645 Line 1
```

`open` receives one layer and reads all three.

### Convert BinDouble to shapefiles

```python
import os

import digi21.io.bindouble as bind
import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = bind.open("parcelas.bind", digitab)
os.makedirs("convertido", exist_ok=True)

with shp.create("convertido/capas.shp", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("Rechazada:", type(geometry).__name__, [c.code for c in geometry.codes])

print(writer.written, "escritas,", writer.rejected, "rechazadas")
for aviso in writer.warnings:
    print(aviso)
```

```
Rechazada: Text ['020402']
3 escritas, 1 rechazadas
The format cannot store a text with the code 020402.
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example. The `020402` layer contains polygons, so text is rejected.

### Choose `.dbf` encoding

```python
import os

import digi21.io.shp as shp
from digi21.base import DigiTab, Point

digitab = DigiTab.load("Digi.tab.xml")
os.makedirs("ansi", exist_ok=True)

with shp.create("ansi/capas.shp", digitab, crs="EPSG:25830", encoding=0x57) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))

with open("ansi/shp_010123.dbf", "rb") as dbf:
    print(hex(dbf.read(30)[29]))
with open("ansi/shp_010123.cpg", encoding="ascii") as cpg:
    print(cpg.read())
```

```
0x57
1252
```

Byte 29 of the `.dbf` header is the LDID. `0x57` means Windows-1252, declared by `.cpg`.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.geopackage](geopackage.md) — a single database with one table per code.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [SHP format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md)
