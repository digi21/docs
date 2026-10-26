# digi21.io.shp
<!-- id: digi21.io.shp -->

Módulo: [digi21.io](README.md)

Lee y escribe [shapefiles](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md)
de ESRI (`.shp`, `.shx`, `.dbf`, `.prj` y `.cpg`). Un shapefile tiene un solo tipo de geometría, así
que el exportador escribe **una capa por código** en la carpeta de destino.

```python
import digi21.io.shp as shp
```

> [!IMPORTANT]
> Importa `digi21.io.shp` **antes** de cargar la tabla de códigos con `DigiTab.load`. La primera
> tabla que se carga en el proceso solo recibe los elementos `ioshp:transform` si el módulo ya está
> importado.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta de uno de los `.shp` de la carpeta. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md) con las geometrías de **todas las capas de la
carpeta** de `path`, en el orden de las capas. `DrawingFile.path` es la carpeta. Los polígonos se leen
con los vértices en el orden contrario al que se escribieron: el formato guarda el anillo exterior en
el sentido de las agujas del reloj. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="", *, precision=0, encoding=0xFF) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta de un `.shp` en la carpeta de destino. Solo se usa la carpeta: el nombre de cada capa se obtiene de la tabla de códigos. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. **Imprescindible**: cada código necesita su elemento `ioshp:transform` y una tabla de base de datos. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se escribe en el `.prj` de cada capa nueva. |
| `precision` | `int` | `0` | Número de decimales al que se redondean las coordenadas, de 0 a 12, ambos incluidos. Con 0 no se redondean. Si el valor está fuera de rango, se lanza `ValueError`. |
| `encoding` | `int` | `0xFF` | Identificador de idioma (LDID, *language driver ID*) de la codificación de los `.dbf`, de 0 a 255, ambos incluidos. Con `0xFF`, el `.cpg` indica `UTF-8`; con `0x57`, indica `1252`. Si el valor está fuera de rango, se lanza `ValueError`. |

`precision` y `encoding` son los dos parámetros del formato en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
y se pasan solo por nombre.

Requisitos de la tabla de códigos para cada código que se escribe:

- una **tabla de base de datos** asignada al código (atributo `table`) que exista en el esquema de
  base de datos (`databaseSchema`), con una clave primaria numérica;
- un elemento `ioshp:transform` con el nombre de la capa (`nameSHP`) y su tipo de geometría
  (`typeNewTable`: 11 = puntos, 13 = líneas, 15 = polígonos, todos con Z).

```xml
<databaseSchema>
  <table name="Prueba" description="">
    <field name="Id" title="Id" type="N" length="11" primaryKey="1" />
    <field name="Nombre" title="Nombre" type="C" length="50" />
  </table>
</databaseSchema>
<codes>
  <code name="040645" description="Árbol puntual" type="0" table="Prueba" …>
    <io>
      <ioshp:transform export="1" nameSHP="shp_040645" typeNewTable="13" />
```

Qué hace el exportador:

- Rechaza las geometrías de un código que no cumple los requisitos, y `warnings` dice qué falta.
- Rechaza una geometría cuyo tipo no coincide con el de su capa (un texto en una capa de polígonos, una línea en
  una capa de puntos).
- Sustituye las capas con el mismo nombre y conserva las demás de la carpeta. Una capa que se
  sustituye **conserva su `.prj`**, y `warnings` avisa si algún `.prj` de la carpeta tiene otro
  sistema de coordenadas.

Excepciones de `create`: `ValueError` si falta `crs`, no es válido o `precision` o `encoding` están
fuera de rango; `FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
`Digi.tab.xml` es la tabla de códigos del apartado anterior: los códigos `010123`, `040645` y `020402`
van a las capas `shp_010123` (puntos), `shp_040645` (líneas) y `shp_020402` (polígonos).

### Crear las capas desde cero

```python
import os

import digi21.io.shp as shp
from digi21.base import DigiTab, Line, Point, Polygon

digitab = DigiTab.load("Digi.tab.xml")
os.makedirs("capas", exist_ok=True)

with shp.create("capas/parcelas.shp", digitab, crs="EPSG:25830", precision=3) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
print(sorted(f for f in os.listdir("capas") if f.endswith(".shp")))
```

```
3 escritas, 0 rechazadas
['shp_010123.shp', 'shp_020402.shp', 'shp_040645.shp']
```

El nombre `parcelas.shp` no se usa.

### Leer todas las capas de la carpeta

```python
import collections

import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
conteo = collections.Counter()
for geometry in shp.open("capas/shp_040645.shp", digitab):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (codigo, tipo), n in sorted(conteo.items()):
    print(codigo, tipo, n)
```

```
010123 Point 1
020402 Polygon 1
040645 Line 1
```

`open` recibe una capa y lee las tres.

### Convertir un archivo BinDouble a shapefiles

```python
import os

import digi21.io.bindouble as bind
import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = bind.open("parcelas.bind", digitab)
os.makedirs("convertido", exist_ok=True)

with shp.create("convertido/capas.shp", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("Rechazada:", type(geometry).__name__, [c.code for c in geometry.codes])

print(writer.written, "escritas,", writer.rejected, "rechazadas")
for aviso in writer.warnings:
    print(aviso)
```

```
Rechazada: Text ['020402']
3 escritas, 1 rechazadas
The format cannot store a text with the code 020402.
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md). La
capa de `020402` es de polígonos, así que el texto se rechaza.

### Elegir la codificación de los `.dbf`

```python
import os

import digi21.io.shp as shp
from digi21.base import DigiTab, Point

digitab = DigiTab.load("Digi.tab.xml")
os.makedirs("ansi", exist_ok=True)

with shp.create("ansi/capas.shp", digitab, crs="EPSG:25830", encoding=0x57) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))

with open("ansi/shp_010123.dbf", "rb") as dbf:
    print(hex(dbf.read(30)[29]))
with open("ansi/shp_010123.cpg", encoding="ascii") as cpg:
    print(cpg.read())
```

```
0x57
1252
```

El byte 29 de la cabecera del `.dbf` es el LDID. `0x57` es Windows-1252, y el `.cpg` lo declara.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.geopackage](geopackage.md) — una sola base de datos con una tabla por código.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato SHP](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md)
