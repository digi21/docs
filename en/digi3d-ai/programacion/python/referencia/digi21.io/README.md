# digi21.io
<!-- id: digi21.io -->
<!-- origen: e45be10445ad8d5400981c4468a4f5f61b276ba9 -->

Read and write Digi3D.AI drawing files from Python using the application importers and exporters. Each format has a **separate module**, sharing an interface: `open` returns an iterable [DrawingFile](../digi21.base/drawingfile.md), and `create` returns a [DrawingWriter](../digi21.base/drawingwriter.md).

Uses [digi21.base](../digi21.base/README.md) types for geometries read and written.

## Format modules

| Module | Format | Extension | Reads | Writes | `crs` in `create` | Page |
|---|---|---|---|---|---|---|
| `digi21.io.bin` | BIN | `.bin` | Yes | Yes | Required | [bin](bin.md) |
| `digi21.io.bindouble` | Double-precision BIN | `.bind` | Yes | Yes | Required | [bindouble](bindouble.md) |
| `digi21.io.asciidigi` | Digi ASCII | `.asc` | Yes | Yes | Required | [asciidigi](asciidigi.md) |
| `digi21.io.dgn` | MicroStation DGN V8 | `.dgn` | Yes | Yes | Required | [dgn](dgn.md) |
| `digi21.io.dwg` | AutoCAD DWG | `.dwg` | Yes | Yes | Required | [dwg](dwg.md) |
| `digi21.io.dxf` | AutoCAD DXF | `.dxf` | Yes | Yes | Required | [dxf](dxf.md) |
| `digi21.io.geojson` | GeoJSON | `.geojson` | Yes | Yes | Optional | [geojson](geojson.md) |
| `digi21.io.kml` | KML | `.kml` | Yes | Yes | Optional | [kml](kml.md) |
| `digi21.io.svg` | SVG | `.svg` | Yes | Yes | Optional | [svg](svg.md) |
| `digi21.io.wkt` | WKT geometries | `.wkt` | Yes | Yes | Optional | [wkt](wkt.md) |
| `digi21.io.geopackage` | OGC GeoPackage | `.gpkg` | Yes | Yes | Required | [geopackage](geopackage.md) |
| `digi21.io.shp` | ESRI Shapefile | `.shp` | Yes | Yes | Required | [shp](shp.md) |
| `digi21.io.pdf` | PDF | `.pdf` | No | Yes | Optional | [pdf](pdf.md) |
| `digi21.io.geomedia` | GeoMedia Access warehouse | `.mdb` | Yes | Append to existing warehouse | Optional | [geomedia](geomedia.md) |
| `digi21.io.postgis` | PostGIS database | `.pg` (connection file) | Yes | Append to existing tables | Optional | [postgis](postgis.md) |
| `digi21.io.ifc` | IFC | `.ifc` | Yes | Building faces only | Optional | [ifc](ifc.md) |
| `digi21.io.vec` | VEC | `.vec` | Yes | Yes | Optional | [vec](vec.md) |

Each page provides `open` and `create` signatures, format parameters, exporter rejections, code table requirements, and executed examples with output.

Esri File Geodatabase (`.gdb`) has no module. Its engine takes a *dataset* (feature class collection) parameter. Without it, the application opens dataset selection; a console application uses the sole dataset or, if several exist, raises an error requesting the parameter.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | File path to read |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table; defaults to empty |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Iteration is lazy, reading geometries as needed. `DrawingFile.crs` is the file coordinate system or an empty string.

Nonexistent `path` raises `FileNotFoundError`. `digi21.io.pdf` has no `open`. `digi21.io.bin` adds `precision` and `global_origin` to `open` because BIN does not store them in the file.

## create

```python
create(path, digitab=None, crs="", *, <parámetros del formato>) -> DrawingWriter
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | Output path. Replaces an existing file |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table providing layer, level, color, etc. for each code. Defaults to empty |
| `crs` | `str` | File coordinate system as WKT or `"EPSG:<código>"`. Required by formats storing it (see table); missing values make `create` raise `ValueError`. Pass another file `DrawingFile.crs` to preserve its system |

**Format parameters** are **keyword-only**, with the exporter defaults. These are the parameters accepted by [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) for that format, documented on each module page.

Common exceptions:

| Exception | When |
|---|---|
| `ValueError` | Missing required `crs`, `crs` containing invalid WKT or EPSG code, or an out-of-range format parameter |
| `FileNotFoundError` | Parent folder of `path` does not exist |
| `RuntimeError` | Exporter reports an error, including its message |

## Shared behavior

### Writer and context manager

`create` returns a [DrawingWriter](../digi21.base/drawingwriter.md). Files are **incomplete until the writer closes**: use `with` for automatic closure on exit, or call `close()`.

```python
with modulo.create("destino.ext", digitab, crs="EPSG:25830") as writer:
    writer.add(geometry)

print(writer.written, writer.rejected)
```

* `add(geometry)` returns `False` if unwritten; `rejected` counts unwritten geometries.
* `written` counts output entities. Formats without multiple codes per entity write a geometry with *n* codes *n* times.
* `warnings` lists exporter messages: untranslated codes, created layers, rejected geometries, etc. Native exporter warnings use the installation language; Python module warnings use English.

### Coordinate system

Exporters **do not transform coordinates**: they write supplied values. `crs` identifies their system. Pass source `crs` when converting:

```python
origen = bind.open("parcelas.bind")
with dxf.create("parcelas.dxf", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)
```

GeoJSON and KML expect longitude and latitude in degrees; source coordinates must already use that system.

Formats storing systems in `.prj` (BIN, Digi ASCII, DGN, DWG, DXF, SHP) **preserve an existing same-name destination `.prj`** instead of writing the `crs` supplied to `create`. `warnings` reports the preserved `.prj`. Delete that `.prj` before creation to use `crs`.

### Code table and import order

Load code tables with `DigiTab.load` **after** importing every format module needed. The first table loaded in the process receives translation parameters (`iodgn:transform`, `ioshp:transform`, `iogpkg:transform`, etc.) only from modules already imported.

```python
import digi21.io.dgn as dgn
import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
```

SVG, GeoPackage, SHP, GeoMedia, and PostGIS reject geometries whose code lacks its table translation element. DGN, DWG, and DXF write them with defaults in a layer or level named after the code.

## Example data

Module page examples use:

* `Digi.tab.xml`: three codes, `010123` (points), `040645` (lines), and `020402` (polygons), with format translations. Each page shows the required fragment.
* `parcelas.bind`: created by the first [digi21.io.bindouble](bindouble.md) example, containing a point, line, polygon, and text in ETRS89 / UTM 30N (EPSG:25830). Source for conversion examples.

## See also

* [digi21.base](../digi21.base/README.md)
* [DrawingFile](../digi21.base/drawingfile.md)
* [DrawingWriter](../digi21.base/drawingwriter.md)
* [Console application examples](../../aplicaciones-de-consola/ejemplos/README.md)
* [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md)
