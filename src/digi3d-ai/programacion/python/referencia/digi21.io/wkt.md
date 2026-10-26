# digi21.io.wkt
<!-- id: digi21.io.wkt -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos de geometrías [WKT](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/wkt.md)
(`.wkt`): una geometría en formato *Well-Known Text* por línea, sin código ni sistema de coordenadas.

```python
import digi21.io.wkt as wkt
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.wkt`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). El archivo no guarda códigos: todas las
geometrías se leen con el código `WKT`. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="", *, width=400) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.wkt`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Opcional. El archivo no guarda el sistema de coordenadas. |
| `width` | `int` | `400` | Parámetro de la línea de comandos del formato, mayor que 0. El exportador no lo usa. |

Qué hace el exportador:

- Escribe `POINT Z`, `LINESTRING Z` y `POLYGON Z` con 4 decimales.
- Escribe los textos como puntos, sin el texto.

Excepciones de `create`: `ValueError` si `width` es menor que 1 o `crs` no es válido;
`FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo desde cero

```python
import digi21.io.wkt as wkt
from digi21.base import Line, Point, Polygon, Text

with wkt.create("parcelas.wkt") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas")
with open("parcelas.wkt", encoding="utf-8") as archivo:
    print(archivo.read())
```

```
4 escritas
POINT Z (500010.0000 4400010.0000 650.0000)
LINESTRING Z (500000.0000 4400000.0000 650.0000, 500100.0000 4400000.0000 652.0000, 500100.0000 4400080.0000 655.0000)
POLYGON Z ((500000.0000 4400000.0000 650.0000, 500100.0000 4400000.0000 652.0000, 500100.0000 4400080.0000 655.0000, 500000.0000 4400000.0000 650.0000))
POINT Z (500050.0000 4400040.0000 653.0000)

```

### Leer y contar por tipo y por código

```python
import collections

import digi21.io.wkt as wkt

conteo = collections.Counter()
for geometry in wkt.open("parcelas.wkt"):
    conteo[(type(geometry).__name__, geometry.codes[0].code)] += 1
print(dict(conteo))
```

```
{('Point', 'WKT'): 2, ('Line', 'WKT'): 1, ('Polygon', 'WKT'): 1}
```

El texto se lee como un punto y los códigos originales se pierden.

### Convertir un archivo BinDouble a WKT

```python
import digi21.io.bindouble as bind
import digi21.io.wkt as wkt

with wkt.create("parcelas-convertido.wkt") as writer:
    for geometry in bind.open("parcelas.bind"):
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato WKT](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/wkt.md)
