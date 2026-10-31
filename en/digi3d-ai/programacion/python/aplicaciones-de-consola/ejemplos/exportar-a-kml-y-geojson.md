# Exporting to KML and GeoJSON
<!-- id: exportar-a-kml-y-geojson -->
<!-- origen: 43a79af06a5ce8bc90c6cd6e271b25207e3db062 -->

`digi21.io.kml` and `digi21.io.geojson` write formats intended for web viewers and virtual globes. Both store **WGS 84 longitude and latitude in degrees**, writing coordinates **without transformation**: geometries must already use that system. Thus `crs` is optional and is not stored.

## Writing both files

```python
import json

import digi21.io.geojson as geojson
import digi21.io.kml as kml
from digi21.base import Line, Point, Polygon, Text

# Longitude and latitude in degrees (WGS 84); z is height.
geometrias = [
    Point((-3.7038, 40.4168, 657.0), ["010123"]),
    Line(["040645"], [(-3.7038, 40.4168, 657.0), (-3.6921, 40.4189, 670.0), (-3.6883, 40.4153, 668.0)]),
    Polygon(["020402"], [(-3.70, 40.41, 650.0), (-3.69, 40.41, 650.0), (-3.69, 40.42, 650.0), (-3.70, 40.41, 650.0)]),
    Text("Madrid", (-3.7038, 40.4168, 657.0), ["010123"], 0.0, 10.0),
]

with kml.create("madrid.kml", title="Madrid", description="Creado desde Python") as writer:
    for geometry in geometrias:
        if not writer.add(geometry):
            print("KML no escribe:", type(geometry).__name__)
print("KML:", writer.written, "escritas")

with geojson.create("madrid.geojson") as writer:
    for geometry in geometrias:
        writer.add(geometry)
print("GeoJSON:", writer.written, "escritas")
```

```
KML no escribe: Text
KML: 3 escritas
GeoJSON: 4 escritas
```

- KML does not export texts. `title` and `description` name and describe the KML document.
- GeoJSON exports texts as points.
- Both files are written when the writer closes.

## GeoJSON contents

A standard `FeatureCollection`. Each geometry is a `Feature` with its code in `Layer` and, for texts, its text in `text`:

```python
with open("madrid.geojson", encoding="utf-8-sig") as archivo:
    documento = json.load(archivo)
for feature in documento["features"]:
    print(feature["geometry"]["type"], feature["properties"]["Layer"], feature["properties"].get("text", ""))
```

```
Point 010123 
LineString 040645 
Polygon 020402 
Point 010123 Madrid
```

Only the first code of each geometry is stored; multicoded geometries are written once per code. Coordinates use full precision.

## Reading KML back

```python
for geometry in kml.open("madrid.kml"):
    print(type(geometry).__name__, len(geometry), "vértices", list(geometry)[0])
```

```
Point 1 vértices (-3.7038, 40.4168, 657.0)
Line 3 vértices (-3.7038, 40.4168, 657.0)
Polygon 4 vértices (-3.7, 40.41, 650.0)
```

KML writes full-precision coordinates, preserving values when read back.

## See also

- [Reference: digi21.io.kml](../../referencia/digi21.io/kml.md): includes preserving each geometry's code with a codes table.
- [Reference: digi21.io.geojson](../../referencia/digi21.io/geojson.md)
- [KML format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md)
- [GeoJSON format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md)
