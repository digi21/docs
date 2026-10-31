# digi21.io.kml
<!-- id: digi21.io.kml -->
<!-- origen: 92149a9de130fb31af5d3d91c2468e5b1610bbb5 -->

Module: [digi21.io](README.md)

Reads and writes Google Earth [KML](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md) files (`.kml`), with WGS 84 longitude and latitude in degrees and height above the EGM96 geoid.

```python
import digi21.io.kml as kml
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.kml` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Each geometry's code is its `Placemark` name (`<name>`). Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="", *, title="", description="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.kml` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. Assigns each code its color and altitude mode (`iokml:transform`). An empty one is used if omitted. |
| `crs` | `str` | `""` | Optional. Not saved in the file. If supplied and different from the exporter's declared system, reported in `warnings`. |
| `title` | `str` | `""` | KML document name (`<Document><name>`). |
| `description` | `str` | `""` | KML document description (`<Document><description>`). |

`title` and `description` are the format's two [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters and are keyword-only.

Exporter behavior:

- Writes coordinates **without transformation**: supply longitude and latitude in degrees.
- Writes full-precision coordinates: `open` reads the same values.
- Does not write text: `add` returns `False`.
- Writes the geometry code as its `Placemark` name, which `open` reads as the code. The code description is written only if the code is in the code table.
- Writes the file when the writer closes.

`create` exceptions: `ValueError` for invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. `Digi.tab.xml` contains codes `010123`, `040645` and `020402`.

### Create a file with a title from scratch

```python
import digi21.io.kml as kml
from digi21.base import DigiTab, Line, Point, Polygon, Text

digitab = DigiTab.load("Digi.tab.xml")

# WGS 84 longitude and latitude in degrees; z is height above the geoid.
with kml.create("madrid.kml", digitab, title="Madrid", description="Creado desde Python") as writer:
    writer.add(Point((-3.7038, 40.4168, 657.0), ["010123"]))
    writer.add(Line(["040645"], [(-3.7038, 40.4168, 657.0), (-3.6921, 40.4189, 670.0), (-3.6883, 40.4153, 668.0)]))
    writer.add(Polygon(["020402"], [(-3.70, 40.41, 650.0), (-3.69, 40.41, 650.0),
                                    (-3.69, 40.42, 650.0), (-3.70, 40.41, 650.0)]))
    print(writer.add(Text("Madrid", (-3.7038, 40.4168, 657.0), ["010123"], text_height=10.0)))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
False
3 escritas, 1 rechazadas
```

The text is not written.

### Read and iterate geometries

```python
import digi21.io.kml as kml
from digi21.base import DigiTab

for geometry in kml.open("madrid.kml", DigiTab.load("Digi.tab.xml")):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices", geometry[0])
```

```
Point ['010123'] 1 vértices (-3.7038, 40.4168, 657.0)
Line ['040645'] 3 vértices (-3.7038, 40.4168, 657.0)
Polygon ['020402'] 4 vértices (-3.7, 40.41, 650.0)
```

### Convert GeoJSON to KML

```python
import digi21.io.geojson as geojson
import digi21.io.kml as kml
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = geojson.open("madrid.geojson", digitab)
with kml.create("desde-geojson.kml", digitab, title="Convertido desde GeoJSON") as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
3 escritas, 0 rechazadas
```

`madrid.geojson` contains a point, line and polygon in longitude and latitude. Both formats use the same system, so no coordinate transformation is needed.

### Read document title and description

```python
import xml.etree.ElementTree as ET

ns = {"kml": "http://www.opengis.net/kml/2.2"}
documento = ET.parse("madrid.kml").getroot().find("kml:Document", ns)
print(documento.findtext("kml:name", namespaces=ns))
print(documento.findtext("kml:description", namespaces=ns))
```

```
Madrid
Creado desde Python
```

### Coordinate precision

```python
import digi21.io.kml as kml
from digi21.base import Point

with kml.create("precision.kml") as writer:
    writer.add(Point((-3.70123456, 40.41678912, 657.123), ["010123"]))
punto = next(iter(kml.open("precision.kml")))
print(punto[0])
```

```
(-3.70123456, 40.41678912, 657.123)
```

Coordinates are read with the same values written.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.geojson](geojson.md) — the other longitude/latitude format.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [KML format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md)
