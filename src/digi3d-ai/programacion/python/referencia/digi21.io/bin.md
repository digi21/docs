# digi21.io.bin
<!-- id: digi21.io.bin -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [BIN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin.md)
(`.bin`), el formato binario de Digi3D.AI con coordenadas enteras de 32 bits.

```python
import digi21.io.bin as bin_
```

El nombre `bin` coincide con la función `bin()` de Python: impórtalo con otro nombre, por ejemplo `bin_`.

## open

```python
open(path, digitab=None, *, precision=2, global_origin=(0.0, 0.0, 0.0)) -> DrawingFile
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.bin`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `precision` | `int` | `2` | Número de decimales con el que se escribió el archivo. |
| `global_origin` | `tuple` | `(0.0, 0.0, 0.0)` | Origen `(x, y, z)` con el que se escribió el archivo. Se suma a las coordenadas leídas. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). El archivo no guarda ni la precisión ni el
origen global: pasa a `open` los mismos valores de `precision` y `global_origin` que a `create`. El
sistema de coordenadas se obtiene del archivo `.prj` con el mismo nombre que el dibujo.

`precision` y `global_origin` se pasan solo por nombre. Si `path` no existe, `open` lanza
`FileNotFoundError`; si `global_origin` contiene un valor infinito o `nan`, lanza `ValueError`.

## create

```python
create(path, digitab=None, crs="", *, precision=2, global_origin=(0.0, 0.0, 0.0)) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.bin`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se escribe en un archivo `.prj` junto al dibujo. |
| `precision` | `int` | `2` | Número de decimales que se guardan. Las coordenadas se guardan como enteros de 32 bits: con 2 decimales, el valor máximo es ±21.474.836,47. |
| `global_origin` | `tuple` | `(0.0, 0.0, 0.0)` | Origen `(x, y, z)` que se resta a las coordenadas antes de guardarlas. |

`precision` y `global_origin` son los dos parámetros del formato en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
y se pasan solo por nombre.

Qué hace el exportador:

- Escribe puntos, líneas, polígonos, textos y complejos.
- Guarda los códigos con **6 caracteres como máximo**: `"VERTICE"` se escribe `"VERTIC"`, y
  `warnings` incluye un aviso por cada código truncado.
- Si junto al destino ya hay un `.prj` con el mismo nombre, lo **conserva** en lugar de escribir
  `crs`, y `warnings` indica que se conserva el archivo `.prj` existente. Para usar `crs`, borra ese `.prj` antes de crear el archivo.

Excepciones de `create`: `ValueError` si falta `crs` o no es válido; `FileNotFoundError` si la carpeta
de `path` no existe.

> [!WARNING]
> Como el archivo no guarda `precision`, un archivo leído con una precisión distinta de la que se usó
> al escribirlo devuelve las coordenadas con un factor de escala: un archivo escrito con
> `precision=3` y leído con el valor por defecto, 2, devuelve las coordenadas multiplicadas por 10
> (ver el último ejemplo).

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo desde cero

```python
import digi21.io.bin as bin_
from digi21.base import Line, Point, Polygon, Text

with bin_.create("parcelas.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "entidades escritas en", writer.path)
```

```
4 entidades escritas en parcelas.bin
```

El exportador escribe además `parcelas.prj` con el sistema EPSG:25830.

### Leer y contar por tipo y por código

```python
import collections

import digi21.io.bin as bin_

por_tipo = collections.Counter()
por_codigo = collections.Counter()

dibujo = bin_.open("parcelas.bin")
for geometry in dibujo:
    por_tipo[type(geometry).__name__] += 1
    for code in geometry.codes:
        por_codigo[code.code] += 1

print(dict(por_tipo))
print(dict(por_codigo))
```

```
{'Point': 1, 'Line': 1, 'Polygon': 1, 'Text': 1}
{'010123': 1, '040645': 1, '020402': 2}
```

### Convertir un archivo BinDouble a BIN

```python
import digi21.io.bin as bin_
import digi21.io.bindouble as bind

origen = bind.open("parcelas.bind")
with bin_.create("parcelas-convertido.bin", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`crs=origen.crs` copia el sistema de coordenadas del archivo de origen.

### Escribir con un origen global

Con `global_origin`, el archivo guarda las coordenadas relativas a ese origen. Como el archivo no guarda el origen global,
pasa a `open` el mismo origen global que a `create`:

```python
import digi21.io.bin as bin_
from digi21.base import Line

origen_global = (500000.0, 4400000.0, 0.0)
with bin_.create("origen.bin", crs="EPSG:25830", global_origin=origen_global) as writer:
    writer.add(Line(["040645"], [(500000.12, 4400000.25, 650.5), (500100.5, 4400080.75, 655.0)]))

print("Sin origen:", [list(g) for g in bin_.open("origen.bin")])
print("Con origen:", [list(g) for g in bin_.open("origen.bin", global_origin=origen_global)])
```

```
Sin origen: [[(0.12, 0.25, 650.5), (100.5, 80.75, 655.0)]]
Con origen: [[(500000.12, 4400000.25, 650.5), (500100.5, 4400080.75, 655.0)]]
```

`open` mantiene el archivo abierto mientras exista el `DrawingFile` o alguna de sus geometrías: para
abrir el mismo archivo otra vez, libera antes las referencias al primer `DrawingFile` y a sus geometrías.

### Códigos de más de 6 caracteres

```python
import digi21.io.bin as bin_
from digi21.base import Point

with bin_.create("codigos.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["VERTICE"]))

for aviso in writer.warnings:
    print(aviso)
print([c.code for g in bin_.open("codigos.bin") for c in g.codes])
```

```
Se ha almacenado en el archivo BIN una entidad con código desconocido: VERTICE. Se ha conservado dicho código en el archivo de dibujo.
El código VERTICE tiene más de 6 caracteres, el máximo del formato BIN. Se ha almacenado como VERTIC.
['VERTIC']
```

Los avisos del exportador se muestran en el idioma de la instalación.

### Precisión distinta de 2

```python
import digi21.io.bin as bin_
from digi21.base import Point

with bin_.create("precision.bin", crs="EPSG:25830", precision=3) as writer:
    writer.add(Point((1.234, 5.678, 9.0), ["010123"]))
print([list(g) for g in bin_.open("precision.bin", precision=3)])
print([list(g) for g in bin_.open("precision.bin")])
```

```
[[(1.234, 5.678, 9.0)]]
[[(12.34, 56.78, 90.0)]]
```

El archivo guarda `1234`, `5678` y `9000`. Con `precision=3`, `open` los divide entre 1000; con el
valor por defecto, 2, los divide entre 100.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [digi21.io.bindouble](bindouble.md) — formato binario de doble precisión, sin límite de coordenadas.
- [Formato BIN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin.md)
