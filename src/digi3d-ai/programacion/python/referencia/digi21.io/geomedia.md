# digi21.io.geomedia
<!-- id: digi21.io.geomedia -->

Módulo: [digi21.io](README.md)

Lee almacenes [GeoMedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md)
en Access (`.mdb`) y les **añade** geometrías. El exportador no crea el almacén ni sus clases de
entidad.

```python
import digi21.io.geomedia as geomedia
```

Necesita el proveedor Microsoft Access Database Engine (`Microsoft.ACE.OLEDB.12.0`) de 64 bits.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del almacén `.mdb`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional) con el `ioGeomedia:transform` de cada código. Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md) con las geometrías de todas las clases de
entidad. `DrawingFile.crs` es el sistema de coordenadas de la tabla `GCoordSystem` del almacén. Si
`path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta de un almacén GeoMedia en Access **que ya existe** y tiene sus clases de entidad en la tabla `GFeatures`. Se conservan las geometrías que ya tiene. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. **Imprescindible**: cada código necesita su elemento `ioGeomedia:transform` con su clase de entidad. |
| `crs` | `str` | `""` | Opcional. El sistema es el de la tabla `GCoordSystem` del almacén; si `crs` no coincide, `warnings` lo avisa. |

El formato no tiene parámetros en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md).

Requisito de la tabla de códigos: cada código que se escribe necesita un elemento
`ioGeomedia:transform` cuyo atributo `table` es la clase de entidad del almacén:

```xml
<code name="040645" description="Árbol puntual" type="0" …>
  <io>
    <ioGeomedia:transform table="040645" textHeight="1.000000" />
```

Qué hace el exportador:

- Añade cada geometría a la clase de entidad de su código. Una geometría de otro tipo que su clase
  (una línea abierta en una clase de áreas) se rechaza: `add` devuelve `False` y `warnings` lo indica.

Excepciones de `create`: `FileNotFoundError` si `path` no existe; `RuntimeError` si el almacén no
tiene clases de entidad (como los archivos semilla de GeoMedia).

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12 contra una copia de un almacén GeoMedia
real, que no se publica: una hoja del modelo MGCP con 11.514 geometrías en ETRS89 geográficas, y su
tabla de códigos `modelo.tab.xml`. La salida que se muestra es la real. En MGCP los códigos que
empiezan por `A` son áreas, por `L` líneas y por `P` puntos.

### Leer y contar por tipo

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

### Convertir el almacén a BinDouble

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

### Añadir geometrías al almacén

```python
import digi21.io.geomedia as geomedia
from digi21.base import DigiTab, Line

digitab = DigiTab.load("modelo.tab.xml")
antes = sum(1 for _ in geomedia.open("almacen.mdb", digitab))

# Coordenadas en el sistema del almacén (aquí, ETRS89 geográficas: longitud y latitud en grados).
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

`LAP030` es una clase de líneas y acepta la línea. `AAL015` es una clase de áreas y rechaza una línea
abierta.

### El almacén tiene que existir

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

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.postgis](postgis.md) — el otro módulo que añade geometrías a capas que ya existen.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato GeoMedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md)
