# digi21.io.vec
<!-- id: digi21.io.vec -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos de dibujo [VEC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md)
(`.vec`). El archivo organiza las geometrías en capas numeradas y no guarda el sistema de coordenadas.

```python
import digi21.io.vec as vec
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.vec`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional) con el `iovec:transform` de cada código. Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). Sin `iovec:transform`, el código de cada
geometría es el número de su capa. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.vec`. Si existe, se sustituye al cerrar el escritor. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Da a cada código su capa (elemento `iovec:transform`). Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Opcional. El archivo no guarda el sistema de coordenadas. |

El formato no tiene parámetros en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md).

Qué hace el exportador:

- Escribe puntos, líneas, polígonos y textos. **No escribe complejos**: `add` devuelve `False`.
- Toma la capa de cada código de su `iovec:transform`. Sin él, asigna una capa nueva a cada código,
  numeradas desde 0 en el orden en que aparecen los códigos.
- Escribe en un archivo temporal junto a `path` y lo sustituye al cerrar el escritor. Si no puede,
  `close` lanza `RuntimeError`.

Excepciones de `create`: `ValueError` si `crs` no es válido; `FileNotFoundError` si la carpeta de
`path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo desde cero

```python
import digi21.io.vec as vec
from digi21.base import Line, Point, Polygon, Text

with vec.create("parcelas.vec") as writer:
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

### Leer y contar por capa y por tipo

```python
import collections

import digi21.io.vec as vec

conteo = collections.Counter()
for geometry in vec.open("parcelas.vec"):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (capa, tipo), n in sorted(conteo.items()):
    print(capa, tipo, n)
```

```
0 Point 1
1 Line 1
2 Polygon 1
2 Text 1
```

Sin `iovec:transform`, los códigos `010123`, `040645` y `020402` han ido a las capas 0, 1 y 2, y al
leer el código de cada geometría es el número de la capa.

### Convertir un archivo BinDouble a VEC

```python
import digi21.io.bindouble as bind
import digi21.io.vec as vec

with vec.create("parcelas-convertido.vec") as writer:
    for geometry in bind.open("parcelas.bind"):
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).

### Un complejo no se escribe

```python
import digi21.io.vec as vec
from digi21.base import Complex, Line

bloque = Complex(["040645"])
bloque.add(Line(["040645"], [(0, 0, 0), (10, 0, 0)]))

with vec.create("complejo.vec") as writer:
    print(writer.add(bloque))
print(writer.warnings)
```

```
False
['The code 040645 is not in the digitab.']
```

Sin tabla de códigos, el aviso atribuye el rechazo al código, pero el motivo es el tipo de
geometría: el formato no admite complejos. Para conservar su contenido, escribe cada geometría hija
por separado (`for hija in bloque: writer.add(hija)`).

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato VEC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md)
