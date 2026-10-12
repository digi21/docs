# Exportar a KML y GeoJSON
<!-- id: exportar-a-kml-y-geojson -->

Los módulos `digi21.io.kml` y `digi21.io.geojson` escriben formatos pensados para visores web y
globos virtuales. Los dos guardan **longitud y latitud WGS 84 en grados**, y sus exportadores
escriben las coordenadas **sin transformarlas**: las geometrías tienen que estar ya en ese sistema.
Por eso `crs` es opcional en los dos y no se guarda en el archivo.

## Escribir los dos archivos

```python
import json

import digi21.io.geojson as geojson
import digi21.io.kml as kml
from digi21.base import Line, Point, Polygon, Text

# Longitud y latitud en grados (WGS 84); la z es la altura.
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

- El exportador de KML no escribe textos. `title` y `description` son el nombre y la descripción
  del documento KML.
- El exportador de GeoJSON escribe los textos como puntos.
- Los dos archivos se escriben al cerrar el escritor.

## Qué contiene el GeoJSON

El archivo es un `FeatureCollection` estándar. Cada geometría es un `Feature` con su código en la
propiedad `Layer` y, en los textos, el texto en la propiedad `text`:

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

Solo se guarda el primer código de cada geometría; una geometría con varios códigos se escribe una
vez por código. Las coordenadas se escriben con 6 decimales.

## Releer el KML

```python
for geometry in kml.open("madrid.kml"):
    print(type(geometry).__name__, len(geometry), "vértices", list(geometry)[0])
```

```
Point 1 vértices (-3.7038, 40.4168, 657.0)
Line 3 vértices (-3.7038, 40.4168, 657.0)
Polygon 4 vértices (-3.7, 40.41, 650.0)
```

El exportador de KML escribe las coordenadas con **6 cifras significativas**: una latitud de 40
grados se guarda con 4 decimales, unos 11 m. Las de este ejemplo tienen 4 decimales y se releen
iguales; `-3.70123456` se releería como `-3.70123`.

## Véase también

- [Referencia: digi21.io.kml](../../referencia/digi21.io/README.md#digi21iokml)
- [Referencia: digi21.io.geojson](../../referencia/digi21.io/README.md#digi21iogeojson)
- [Formato KML](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md)
- [Formato GeoJSON](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md)
