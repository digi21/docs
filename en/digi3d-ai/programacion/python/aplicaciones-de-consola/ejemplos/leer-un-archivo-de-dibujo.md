# Reading a drawing file
<!-- id: leer-un-archivo-de-dibujo -->
<!-- origen: 55f54a6a05dedfcef18378e51b4f2e19e58d6ab8 -->

The `digi21.io` package reads Digi3D.AI drawing files. One module per format, all with the same interface: `open` returns an iterable [`DrawingFile`](../../referencia/digi21.base/drawingfile.md).

| Module | Format |
| --- | --- |
| [`digi21.io.bindouble`](../../referencia/digi21.io/bindouble.md) | BinDouble (`.bind`) |
| [`digi21.io.bin`](../../referencia/digi21.io/bin.md) | Bin (`.bin`) |
| [`digi21.io.asciidigi`](../../referencia/digi21.io/asciidigi.md) | ASCII Digi (`.asc`) |
| [`digi21.io.dgn`](../../referencia/digi21.io/dgn.md) | MicroStation DGN (`.dgn`) |
| [`digi21.io.dwg`](../../referencia/digi21.io/dwg.md) | AutoCAD DWG (`.dwg`) |
| [`digi21.io.dxf`](../../referencia/digi21.io/dxf.md) | AutoCAD DXF (`.dxf`) |

This topic uses these six modules. Other formats (GeoJSON, KML, SVG, WKT, GeoPackage, SHP, GeoMedia, PostGIS, IFC and VEC) are read the same way; each module's page in [digi21.io](../../referencia/digi21.io/README.md) has a reading example.

## Opening and iterating

```python
import digi21.io.bindouble as bind

drawing = bind.open("ciudad.bind")
for geometry in drawing:
    print(type(geometry).__name__, len(geometry), "vértices")
```

Iteration is **lazy**: geometries are read from the file as you iterate.

## Counting geometries by type

```python
import collections
import digi21.io.dgn as dgn

conteo = collections.Counter()
for geometry in dgn.open("hoja.dgn"):
    conteo[type(geometry).__name__] += 1

for tipo, n in conteo.items():
    print(f"{tipo}: {n}")
```

## Filtering by type and code

```python
import digi21.io.dxf as dxf
from digi21.base import Line

for geometry in dxf.open("planta.dxf"):
    if isinstance(geometry, Line) and geometry.closed:
        if any(c.matches("EDIF*") for c in geometry.codes):
            print("Edificio cerrado con", len(geometry), "vértices")
```

## Using a codes table

Passing a [`DigiTab`](../../referencia/digi21.base/digitab.md) supplies descriptions, visibility and other code properties for the geometries read:

```python
import digi21.base as base
import digi21.io.bindouble as bind

digitab = base.DigiTab.load("Digi.tab.xml")
drawing = bind.open("ciudad.bind", digitab=digitab)

for geometry in drawing:
    for code in geometry.codes:
        print(code.code)
```

## See also

- [Reference: digi21.io](../../referencia/digi21.io/README.md)
- [Reference: DrawingFile](../../referencia/digi21.base/drawingfile.md)
- [Creating geometries](crear-geometrias.md)
- [Creating a drawing file](crear-un-archivo-de-dibujo.md)
