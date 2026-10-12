# digi21.io.geojson
<!-- id: digi21.io.geojson -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [GeoJSON](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md)
(`.geojson`): un `FeatureCollection` según la RFC 7946, con longitud y latitud WGS 84 en grados.

```python
import digi21.io.geojson as geojson
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.geojson`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). El código de cada geometría es la propiedad
`Layer` de su `Feature`. Los textos escritos por `create` se leen como puntos. Si `path` no existe,
lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.geojson`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Opcional. No se guarda en el archivo. Si se indica y no es el sistema que declara el exportador (WGS 84, EPSG:4979), `warnings` lo avisa. |

El formato no tiene parámetros en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md).

Qué hace el exportador:

- Escribe las coordenadas **sin transformarlas**: pásale geometrías con longitud y latitud en grados.
  No hay transformación de coordenadas en `digi21.io`.
- Escribe cada geometría como un `Feature` con su primer código en la propiedad `Layer`. Una geometría
  con varios códigos se escribe una vez por código.
- Escribe los textos como puntos con el texto en la propiedad `text`.
- Escribe las coordenadas con 6 decimales.

Excepciones de `create`: `ValueError` si `crs` no es válido; `FileNotFoundError` si la carpeta de
`path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo desde cero

```python
import digi21.io.geojson as geojson
from digi21.base import Line, Point, Polygon, Text

# Longitud y latitud WGS 84 en grados; la z es la altura.
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

### Leer y contar por código y por tipo

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

El texto `Madrid` se lee como un segundo punto con el código `010123`.

### Convertir un archivo BinDouble en coordenadas geográficas

```python
import digi21.io.bindouble as bind
import digi21.io.geojson as geojson

# madrid.bind tiene las coordenadas en ETRS89 geográficas (EPSG:4258): longitud y latitud en grados.
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

El origen tiene que estar en longitud y latitud. Un archivo en UTM, como el `parcelas.bind` de los
demás ejemplos de [digi21.io](README.md), se escribiría con sus coordenadas UTM y el GeoJSON no sería
válido.

### Leer el GeoJSON con el módulo `json`

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

Sin tabla de códigos, `Description` es `Desconocido` y `stroke` es el color de los códigos
desconocidos. Con una tabla, son la descripción y el color de cada código.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.kml](kml.md) — el otro formato en longitud y latitud.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato GeoJSON](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md)
