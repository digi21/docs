# digi21.io.kml
<!-- id: digi21.io.kml -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [KML](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md)
(`.kml`) de Google Earth, con longitud y latitud WGS 84 en grados y altura sobre el geoide EGM96.

```python
import digi21.io.kml as kml
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.kml`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). El código de cada geometría es el nombre
(`<name>`) de su `Placemark`. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="", *, title="", description="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.kml`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Da a cada código su color y su modo de altitud (elemento `iokml:transform`). Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Opcional. No se guarda en el archivo. Si se indica y no es el sistema que declara el exportador, `warnings` lo avisa. |
| `title` | `str` | `""` | Nombre del documento KML (`<Document><name>`). |
| `description` | `str` | `""` | Descripción del documento KML (`<Document><description>`). |

`title` y `description` son los dos parámetros del formato en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
y se pasan solo por nombre.

Qué hace el exportador:

- Escribe las coordenadas **sin transformarlas**: pásale geometrías con longitud y latitud en grados.
- Escribe las coordenadas con **6 cifras significativas**: una latitud de 40 grados se guarda con 4
  decimales (unos 11 m).
- No escribe textos: `add` devuelve `False`.
- Escribe el código como nombre del `Placemark` **solo si el código está en la tabla de códigos**. Con
  un código que no está en la tabla, o sin tabla, escribe `(desconocido)`, y `open` lee ese nombre
  como código. `warnings` no lo avisa.
- Escribe el archivo al cerrar el escritor.

Excepciones de `create`: `ValueError` si `crs` no es válido; `FileNotFoundError` si la carpeta de
`path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
`Digi.tab.xml` es una tabla de códigos con los códigos `010123`, `040645` y `020402`.

### Crear un archivo desde cero con título

```python
import digi21.io.kml as kml
from digi21.base import DigiTab, Line, Point, Polygon, Text

digitab = DigiTab.load("Digi.tab.xml")

# Longitud y latitud WGS 84 en grados; la z es la altura sobre el geoide.
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

El texto no se escribe.

### Leer y recorrer las geometrías

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

### Convertir un GeoJSON a KML

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

`madrid.geojson` tiene un punto, una línea y un polígono en longitud y latitud. Los dos formatos usan
el mismo sistema, así que no hace falta transformar las coordenadas.

### Leer el título y la descripción del documento

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

### Precisión de las coordenadas

```python
import digi21.io.kml as kml
from digi21.base import Point

with kml.create("precision.kml") as writer:
    writer.add(Point((-3.70123456, 40.41678912, 657.123), ["010123"]))
punto = next(iter(kml.open("precision.kml")))
print(punto[0])
```

```
(-3.70123, 40.4168, 657.123)
```

Cada coordenada conserva 6 cifras significativas.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.geojson](geojson.md) — el otro formato en longitud y latitud.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato KML](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md)
