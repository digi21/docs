# digi21.io.geojson
<!-- id: digi21.io.geojson -->
<!-- origen: c6117bd1f6d25ba9bbdaccab815b38ec1d965b4e -->

Module: [digi21.io](README.md)

Reads and writes [GeoJSON](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md) files (`.geojson`): a `FeatureCollection` following RFC 7946, with WGS 84 longitude and latitude in degrees.

```python
import digi21.io.geojson as geojson
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.geojson` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Each geometry's code is its `Feature`'s `Layer` property. Text written by `create` is read as points. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.geojson` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `crs` | `str` | `""` | Optional. Not saved in the file. If supplied and different from the exporter's declared system (WGS 84, EPSG:4979), reported in `warnings`. |

The format has no [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters.

Exporter behavior:

- Writes coordinates **without transformation**: supply geometries with longitude and latitude in degrees. `digi21.io` does not transform coordinates.
- Writes each geometry as a `Feature` with its first code in `Layer`. A multi-code geometry is written once per code.
- Writes text as points with content in the `text` property.
- Writes full-precision coordinates: `open` reads the same values.

`create` exceptions: `ValueError` for invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a file from scratch

```python
import digi21.io.geojson as geojson
from digi21.base import Line, Point, Polygon, Text

# WGS 84 longitude and latitude in degrees; z is height.
with geojson.create("madrid.geojson") as writer:
    writer.add(Point((-3.7038, 40.4168, 657.0), ["010123"]))
    writer.add(Line(["040645"], [(-3.7038, 40.4168, 657.0), (-3.6921, 40.4189, 670.0), (-3.6883, 40.4153, 668.0)]))
    writer.add(Polygon(["020402"], [(-3.70, 40.41, 650.0), (-3.69, 40.41, 650.0),
                                    (-3.69, 40.42, 650.0), (-3.70, 40.41, 650.0)]))
    writer.add(Text("Madrid", (-3.7038, 40.4168, 657.0), ["010123"], text_height=10.0))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

### Read and count by code and type

```python
import collections

import digi21.io.geojson as geojson

conteo = collections.Counter()
for geometry in geojson.open("madrid.geojson"):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (codigo, tipo), n in sorted(conteo.items()):
    print(codigo, tipo, n)
```

```
010123 Point 2
020402 Polygon 1
040645 Line 1
```

Text `Madrid` is read as a second point with code `010123`.

### Convert BinDouble in geographic coordinates

```python
import digi21.io.bindouble as bind
import digi21.io.geojson as geojson

# madrid.bind uses ETRS89 geographic coordinates (EPSG:4258): longitude and latitude in degrees.
origen = bind.open("madrid.bind")
print(origen.crs[:15])

with geojson.create("madrid-convertido.geojson") as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
GEOGCS["ETRS89"
3 escritas, 0 rechazadas
```

The source must use longitude and latitude. A UTM file such as `parcelas.bind` in other [digi21.io](README.md) examples would be written with its UTM coordinates, producing invalid GeoJSON.

### Read GeoJSON with `json`

```python
import json

with open("madrid.geojson", encoding="utf-8-sig") as archivo:
    documento = json.load(archivo)

print(documento["type"])
for feature in documento["features"]:
    print(feature["geometry"]["type"], feature["properties"])
```

```
FeatureCollection
Point {'stroke': '#A8A8A8', 'Layer': '010123', 'Description': 'Desconocido', 'rotation': '0'}
LineString {'stroke': '#A8A8A8', 'Layer': '040645', 'Description': 'Desconocido'}
Polygon {'stroke': '#A8A8A8', 'Layer': '020402', 'Description': 'Desconocido'}
Point {'stroke': '#A8A8A8', 'Layer': '010123', 'Description': 'Desconocido', 'text': 'Madrid', 'rotation': '0', 'textHeight': '10', 'justification': '0'}
```

Without a code table, `Description` is `Desconocido` and `stroke` is the unknown code color. With a code table, `Description` and `stroke` contain each code's description and color respectively.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.kml](kml.md) — the other longitude/latitude format.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [GeoJSON format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md)
