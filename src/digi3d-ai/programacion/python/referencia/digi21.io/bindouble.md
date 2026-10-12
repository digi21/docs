# digi21.io.bindouble
<!-- id: digi21.io.bindouble -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos
[BIN doble precisión](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md)
(`.bind`), el formato binario de Digi3D.AI con coordenadas en coma flotante de doble precisión. El
archivo guarda el sistema de coordenadas en su cabecera.

```python
import digi21.io.bindouble as bind
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.bind`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). `DrawingFile.crs` es el sistema de
coordenadas de la cabecera del archivo.

Si `path` no existe, lanza `RuntimeError` (no `FileNotFoundError`, como los demás módulos).

## create

```python
create(path, digitab=None, crs="", *, data_model="", connection_string="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.bind`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se guarda en la cabecera del archivo, no en un `.prj`. |
| `data_model` | `str` | `""` | Nombre del modelo de datos de la base de datos de atributos. |
| `connection_string` | `str` | `""` | Cadena de conexión de esa base de datos. Si está vacía, no se usa base de datos. |

`data_model` y `connection_string` son los dos parámetros del formato en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
y se pasan solo por nombre. Un valor con comillas dobles y simples a la vez lanza `ValueError`.

El exportador escribe todos los tipos de geometría de [digi21.base](../digi21.base/README.md):
puntos, textos, líneas, polígonos y complejos.

Excepciones de `create`: `ValueError` si falta `crs` o no es válido; `FileNotFoundError` si la carpeta
de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
Los ejemplos que usan una base de datos de atributos (`data_model` y `connection_string`) no se han
incluido.

### Crear un archivo desde cero

```python
import digi21.io.bindouble as bind
from digi21.base import Line, Point, Polygon, Text

with bind.create("parcelas.bind", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

Este `parcelas.bind` es el archivo de origen de los ejemplos de conversión de las demás páginas de
[digi21.io](README.md).

### Leer y contar por tipo y por código

```python
import collections

import digi21.io.bindouble as bind

dibujo = bind.open("parcelas.bind")
print(dibujo.crs[:30])

conteo = collections.Counter()
for geometry in dibujo:
    conteo[(type(geometry).__name__, geometry.codes[0].code)] += 1

for (tipo, codigo), n in sorted(conteo.items()):
    print(f"{tipo:8} {codigo}: {n}")
```

```
PROJCS["ETRS89 / UTM zone 30N"
Line     040645: 1
Point    010123: 1
Polygon  020402: 1
Text     020402: 1
```

### Convertir un archivo DXF a BinDouble

```python
import digi21.io.bindouble as bind
import digi21.io.dxf as dxf

origen = dxf.open("plano.dxf")
with bind.create("plano.bind", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
3 escritas, 0 rechazadas
```

`plano.dxf` tiene una línea, un punto y un texto, y su sistema de coordenadas en `plano.prj`.

### El sistema de coordenadas va en la cabecera

```python
import os

import digi21.io.bindouble as bind
from digi21.base import Point

with bind.create("sin-prj.bind", crs="EPSG:4258") as writer:
    writer.add(Point((-3.7038, 40.4168, 657.0), ["010123"]))

print(os.path.exists("sin-prj.prj"))
print(bind.open("sin-prj.bind").crs[:24])
```

```
False
GEOGCS["ETRS89",DATUM["E
```

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [digi21.io.bin](bin.md)
- [Formato BIN doble precisión](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md)
