# digi21.io.geomedia
<!-- id: digi21.io.geomedia -->
<!-- origen: ce4b70d25f3b005d38f77e8257bbda77724351fb -->

Module: [digi21.io](README.md)

Reads Access [GeoMedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md) warehouses (`.mdb`) and **adds** geometries. The exporter creates neither the warehouse nor its feature classes.

```python
import digi21.io.geomedia as geomedia
```

Requires the 64-bit Microsoft Access Database Engine provider (`Microsoft.ACE.OLEDB.12.0`).

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.mdb` warehouse path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table with each code's `ioGeomedia:transform`. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md) containing geometries from all feature classes. `DrawingFile.crs` is the coordinate system in the warehouse's `GCoordSystem` table. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | Path to an **existing** Access GeoMedia warehouse with feature classes in `GFeatures`. Existing geometries are preserved. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. **Essential**: each code needs an `ioGeomedia:transform` specifying its feature class. |
| `crs` | `str` | `""` | Optional. Uses the warehouse's `GCoordSystem`; a different `crs` is reported in `warnings`. |

The format has no [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters.

Code table requirement: each written code needs an `ioGeomedia:transform` whose `table` attribute is the warehouse feature class:

```xml
<code name="040645" description="Árbol puntual" type="0" …>
  <io>
    <ioGeomedia:transform table="040645" textHeight="1.000000" />
```

Exporter behavior:

- Adds each geometry to its code's feature class. A geometry of an incompatible type (an open line in an area class) is rejected: `add` returns `False` and `warnings` explains.

`create` exceptions: `FileNotFoundError` if `path` does not exist; `RuntimeError` if the warehouse has no feature classes (as with GeoMedia seed files).

## Examples

These examples were run with Python 3.12 against a copy of a real, unpublished GeoMedia warehouse: an MGCP model sheet with 11,514 geometries in ETRS89 geographic coordinates and its `modelo.tab.xml` code table. Output shown is actual. MGCP codes starting with `A` are areas, `L` lines and `P` points.

### Read and count by type

```python
import collections

import digi21.io.geomedia as geomedia
from digi21.base import DigiTab

digitab = DigiTab.load("modelo.tab.xml")
dibujo = geomedia.open("almacen.mdb", digitab)
print(dibujo.crs[:22])

conteo = collections.Counter()
for geometry in dibujo:
    conteo[type(geometry).__name__] += 1
print(dict(conteo))
```

```
COMPD_CS["ETRS89 + Sis
{'Line': 4546, 'Polygon': 20, 'Point': 6948}
```

### Convert the warehouse to BinDouble

```python
import digi21.io.bindouble as bind
import digi21.io.geomedia as geomedia
from digi21.base import DigiTab

digitab = DigiTab.load("modelo.tab.xml")
origen = geomedia.open("almacen.mdb", digitab)
with bind.create("almacen.bind", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
11514 escritas, 0 rechazadas
```

### Add geometries to the warehouse

```python
import digi21.io.geomedia as geomedia
from digi21.base import DigiTab, Line

digitab = DigiTab.load("modelo.tab.xml")
antes = sum(1 for _ in geomedia.open("almacen.mdb", digitab))

# Coordinates in the warehouse system (here, ETRS89 geographic: longitude and latitude in degrees).
with geomedia.create("almacen.mdb", digitab) as writer:
    print(writer.add(Line(["LAP030"], [(-6.97, 38.88, 200.0), (-6.96, 38.88, 201.0), (-6.96, 38.89, 202.0)])))
    print(writer.add(Line(["AAL015"], [(-6.97, 38.88, 200.0), (-6.96, 38.88, 201.0), (-6.96, 38.89, 202.0)])))

despues = sum(1 for _ in geomedia.open("almacen.mdb", digitab))
print(writer.written, "escrita,", writer.rejected, "rechazada;", antes, "->", despues, "geometrías")
print(writer.warnings)
```

```
True
False
1 escrita, 1 rechazada; 11514 -> 11515 geometrías
['The format cannot store a line with the code AAL015.']
```

`LAP030` is a line class and accepts the line. `AAL015` is an area class and rejects an open line.

### The warehouse must exist

```python
import digi21.io.geomedia as geomedia

try:
    geomedia.create("no-existe.mdb")
except FileNotFoundError as error:
    print(error)
```

```
No such file: 'no-existe.mdb'. The engine cannot create a GeoMedia warehouse: path must be an existing Access database with its feature classes in GFeatures.
```

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.postgis](postgis.md) — the other module adding geometries to existing layers.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [GeoMedia format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md)
