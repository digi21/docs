# digi21.io.geopackage
<!-- id: digi21.io.geopackage -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [GeoPackage](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md)
(`.gpkg`) de OGC: una base de datos SQLite con una tabla por capa.

```python
import digi21.io.geopackage as geopackage
```

> [!IMPORTANT]
> Importa `digi21.io.geopackage` **antes** de cargar la tabla de códigos con `DigiTab.load`. La
> primera tabla que se carga en el proceso solo recibe los elementos `iogpkg:transform` si el módulo
> ya está importado. Si se carga antes, todos los códigos se rechazan por no tener `iogpkg:transform`.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.gpkg`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md) con las geometrías de todas las capas. Si las
capas usan varios sistemas de coordenadas, `open` pregunta cuál usar con un cuadro de diálogo, que un
programa de consola no puede responder. Si `path` no existe, lanza `FileNotFoundError`.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.gpkg`. Si existe, `create` lo **borra** antes de escribir (después de comprobar `crs`). |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. **Imprescindible**: cada código necesita su elemento `iogpkg:transform`. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. El archivo guarda su código EPSG. |

El formato no tiene parámetros en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md).

Requisitos de la tabla de códigos:

- Cada código necesita un elemento `iogpkg:transform` con la tabla del GeoPackage (`table`), la tabla
  del esquema de base de datos de la que toma los campos (`schema`) y el tipo de geometría
  (`typeNewTable`: `POINT`, `LINESTRING`, `POLYGON`, `MULTIPOINT`, `MULTILINESTRING`,
  `MULTIPOLYGON`, `GEOMETRYCOLLECTION` o `GEOMETRY`).
- La tabla del esquema tiene que existir en el `databaseSchema` y tener un campo `GEOMETRY` de tipo
  memo (`type="M"`), donde el exportador guarda la geometría.

```xml
<databaseSchema>
  <table name="Prueba" description="">
    <field name="Id" title="Id" type="N" length="11" primaryKey="1" />
    <field name="Nombre" title="Nombre" type="C" length="50" />
    <field name="GEOMETRY" title="GEOMETRY" type="M" length="10" />
  </table>
</databaseSchema>
<codes>
  <code name="040645" description="Árbol puntual" type="0" table="Prueba" …>
    <io>
      <iogpkg:transform table="gpkg_040645" schema="Prueba" typeNewTable="LINESTRING" />
```

Qué hace el exportador:

- Rechaza las geometrías de un código sin `iogpkg:transform` o que no está en la tabla: `add`
  devuelve `False` y `warnings` lo explica una vez por código.
- Una geometría de otro tipo que su tabla (un texto en una tabla `POLYGON`, una línea en una tabla
  `POINT`) lanza
  `RuntimeError` con el mensaje del exportador.
- El índice espacial necesita un `sqlite3.dll` con el módulo `rtree`. Si el `sqlite3.dll` que carga el
  proceso no lo tiene, `add` lanza `RuntimeError` con el mensaje `no such module: rtree`.

Excepciones de `create`: `ValueError` si falta `crs` o no es válido; `RuntimeError` si no puede borrar
el archivo existente; `FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.
`Digi.tab.xml` es la tabla de códigos del apartado anterior: los códigos `010123`, `040645` y `020402`
van a las tablas `gpkg_010123` (`POINT`), `gpkg_040645` (`LINESTRING`) y `gpkg_020402` (`POLYGON`).

### Crear un archivo desde cero

```python
import digi21.io.geopackage as geopackage
from digi21.base import DigiTab, Line, Point, Polygon

# La tabla se carga después de importar el módulo: así recibe los elementos iogpkg:transform.
digitab = DigiTab.load("Digi.tab.xml")

with geopackage.create("parcelas.gpkg", digitab, crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
3 escritas, 0 rechazadas
```

### Leer y contar por código y por tipo

```python
import collections

import digi21.io.geopackage as geopackage
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
dibujo = geopackage.open("parcelas.gpkg", digitab)
print(dibujo.crs[:30])

conteo = collections.Counter()
for geometry in dibujo:
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1
for (codigo, tipo), n in sorted(conteo.items()):
    print(codigo, tipo, n)
```

```
COMPD_CS["ETRS89 / UTM zone 30
010123 Point 1
020402 Polygon 1
040645 Line 1
```

### Convertir un archivo BinDouble a GeoPackage

```python
import digi21.io.bindouble as bind
import digi21.io.geopackage as geopackage
from digi21.base import DigiTab, Text

digitab = DigiTab.load("Digi.tab.xml")
origen = bind.open("parcelas.bind", digitab)
with geopackage.create("parcelas-convertido.gpkg", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        if isinstance(geometry, Text):
            continue   # la tabla de 020402 es POLYGON: un texto lanzaría RuntimeError
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
3 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).

### Consultar las tablas con `sqlite3`

```python
import sqlite3

conexion = sqlite3.connect("parcelas.gpkg")
for tabla, tipo, srs in conexion.execute(
        "SELECT table_name, data_type, srs_id FROM gpkg_contents ORDER BY table_name"):
    print(tabla, tipo, srs)
conexion.close()
```

```
gpkg_010123 features 25830
gpkg_020402 features 25830
gpkg_040645 features 25830
```

### Una geometría de otro tipo que su tabla

```python
import digi21.io.geopackage as geopackage
from digi21.base import DigiTab, Text

digitab = DigiTab.load("Digi.tab.xml")
with geopackage.create("texto.gpkg", digitab, crs="EPSG:25830") as writer:
    try:
        writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"]))
    except RuntimeError as error:
        print("RuntimeError:", error)
```

```
RuntimeError: Se ha intentado almacenar como POLYGON una entidad con código: 020402 que no es de tipo línea ni polígono.
```

El mensaje es el del exportador, en el idioma de la instalación.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.shp](shp.md) — la otra forma de escribir una capa por código.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato GeoPackage](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md)
