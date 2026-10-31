# Creating a drawing file
<!-- id: crear-un-archivo-de-dibujo -->
<!-- origen: 6beb224770594a8295b61481d9e8031279815ecf -->

Each `digi21.io` module provides `open` and a `create` function that creates a drawing file and returns a [`DrawingWriter`](../../referencia/digi21.base/drawingwriter.md). It writes geometries created from Python or read from another file, allowing both new drawings and **conversion between formats**.

| Module | Format |
| --- | --- |
| [`digi21.io.bindouble`](../../referencia/digi21.io/bindouble.md) | BinDouble (`.bind`) |
| [`digi21.io.bin`](../../referencia/digi21.io/bin.md) | Bin (`.bin`) |
| [`digi21.io.asciidigi`](../../referencia/digi21.io/asciidigi.md) | ASCII Digi (`.asc`) |
| [`digi21.io.dgn`](../../referencia/digi21.io/dgn.md) | MicroStation DGN (`.dgn`) |
| [`digi21.io.dwg`](../../referencia/digi21.io/dwg.md) | AutoCAD DWG (`.dwg`) |
| [`digi21.io.dxf`](../../referencia/digi21.io/dxf.md) | AutoCAD DXF (`.dxf`) |

Other modules (GeoJSON, KML, SVG, WKT, GeoPackage, SHP, PDF, GeoMedia, PostGIS, IFC and VEC) have their own examples; this topic uses the six above.

Each format's parameters (precision, AutoCAD version, template…) are documented on its module page in [digi21.io](../../referencia/digi21.io/README.md).

## Creating a BIN file from scratch

```python
import digi21.io.bin as bin_
from digi21.base import Line, Point, Polygon, Text

with bin_.create("parcelas.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["VERT"]))
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["PARC"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                  (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["ROTULO"], text_height=2.5))

print(writer.written, "entidades escritas en", writer.path)
```

```
4 entidades escritas en parcelas.bin
```

- `crs` specifies the coordinate system as `"EPSG:<código>"` or WKT. Required by all six formats, which save it. BIN writes it to `parcelas.prj`.
- `with` closes the writer on completion. The file is **incomplete until closed**; without `with`, call `writer.close()`.
- BIN codes have at most 6 characters.

Open the created file with `open` to check its contents:

```python
for geometry in bin_.open("parcelas.bin"):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices")
```

```
Point ['VERT'] 1 vértices
Line ['LINDE'] 3 vértices
Polygon ['PARC'] 4 vértices
Text ['ROTULO'] 1 vértices
```

## Converting BIN to DXF

Open the source with `open` and pass each geometry to the destination format writer. Copy the coordinate system with [`DrawingFile.crs`](../../referencia/digi21.base/drawingfile.md):

```python
import digi21.io.bin as bin_
import digi21.io.dxf as dxf

origen = bin_.open("parcelas.bin")
with dxf.create("parcelas.dxf", crs=origen.crs, version=7) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("No se ha escrito:", type(geometry).__name__, [c.code for c in geometry.codes])

print(f"{writer.written} entidades escritas, {writer.rejected} rechazadas")
```

```
4 entidades escritas, 0 rechazadas
```

`add` returns `False` for unwritten geometries. All are written here: DXF exports polygons as HATCH entities. `version=7` writes AutoCAD 2013 DXF.

## Reviewing exporter warnings

`warnings` reports the exporter's action for each code:

```python
for aviso in writer.warnings:
    print(aviso)
```

```
No se han localizado parámetros para traducir a DWG/DXF entidades con el código: "(desconocido)". Las entidades con este código se almacenarán en la capa: "(desconocido)".
No se localizó ninguna entrada para traducir el código: VERT. La entidad se ha almacenado en la capa 'VERT'.
No se localizó ninguna entrada para traducir el código: LINDE. La entidad se ha almacenado en la capa 'LINDE'.
No se localizó ninguna entrada para traducir el código: PARC. La entidad se ha almacenado en la capa 'PARC'.
No se localizó ninguna entrada para traducir el código: ROTULO. La entidad se ha almacenado en la capa 'ROTULO'.
```

Without a codes table, each code gets a layer bearing its name. Pass a [`DigiTab`](../../referencia/digi21.base/digitab.md) to `create` to assign layers, colors and levels:

```python
import digi21.base as base
import digi21.io.bin as bin_
import digi21.io.dxf as dxf

digitab = base.DigiTab.load("Digi.tab.xml")
origen = bin_.open("parcelas.bin", digitab)
with dxf.create("parcelas.dxf", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)
```

For DGN, a geometry whose code lacks DGN translation is written to a level named after the code using default parameters, and `warnings` reports it. Import `digi21.io.dgn` before `DigiTab.load` to load the table's DGN translation (see [digi21.io.dgn](../../referencia/digi21.io/dgn.md)).

## Errors

Incorrect parameters raise `ValueError`, for example omitting required `crs`:

```python
import digi21.io.dxf as dxf

try:
    dxf.create("sin-src.dxf")
except ValueError as error:
    print(error)
```

```
crs is required: this format stores the coordinate reference system. Pass a WKT string or 'EPSG:<code>'.
```

Exporter errors raise `RuntimeError` with the error message.

## Exporting the active drawing from Digi3D.AI

A [Python pane](../../panel-de-python/README.md) script can export the open drawing with [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md):

```python
import digi3d

view = digi3d.current_view()
view.run_command("IMPORTATION_PARAMETERS=.dxf 7 0 1 0")
view.run_command(r"EXPORT=C:\trabajos\parcelas.dxf")
```

Without [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md), EXPORT opens the format parameter dialog and waits for acceptance. Values correspond to `create` parameters and follow the order on each format's page in [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md). EXPORT can also open a dialog if unable to transform drawing coordinates to the destination file's system. This example has not been run.

## See also

- [Reference: digi21.io](../../referencia/digi21.io/README.md)
- [Reference: DrawingWriter](../../referencia/digi21.base/drawingwriter.md)
- [Reading a drawing file](leer-un-archivo-de-dibujo.md)
- [Creating geometries](crear-geometrias.md)
