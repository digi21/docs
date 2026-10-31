# digi21.io.geopackage
<!-- id: digi21.io.geopackage -->
<!-- origen: 7d7b14c785aac6b9960903b0776eb4b91504b772 -->

Module: [digi21.io](README.md)

Reads and writes OGC [GeoPackage](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md) files (`.gpkg`): SQLite databases with one table per layer.

```python
import digi21.io.geopackage as geopackage
```

> [!IMPORTANT]
> Import `digi21.io.geopackage` **before** loading the code table with `DigiTab.load`. The first table loaded in the process receives `iogpkg:transform` elements only if the module is already imported. Loading the table before importing `digi21.io.geopackage` rejects all codes for lacking `iogpkg:transform`.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.gpkg` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md) with geometries from all layers. If layers use several coordinate systems, `open` asks which to use in a dialog that a console program cannot answer. Raises `FileNotFoundError` if `path` does not exist.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.gpkg` file path. `create` **deletes** an existing file before writing, after checking `crs`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. **Essential**: each code needs an `iogpkg:transform`. |
| `crs` | `str` | `""` | Coordinate system: WKT or `"EPSG:<código>"`. **Required**. Its EPSG code is stored in the file. |

The format has no [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters.

Code table requirements:

- Each code needs an `iogpkg:transform` with the GeoPackage table (`table`), database schema table providing fields (`schema`) and geometry type (`typeNewTable`: `POINT`, `LINESTRING`, `POLYGON`, `MULTIPOINT`, `MULTILINESTRING`, `MULTIPOLYGON`, `GEOMETRYCOLLECTION` or `GEOMETRY`).
- The schema table must exist in `databaseSchema` and have a memo (`type="M"`) field named `GEOMETRY`, where the exporter stores geometry.

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

Exporter behavior:

- Rejects geometries whose code lacks `iogpkg:transform` or is absent from the code table: `add` returns `False` and `warnings` explains once per code.
- Adding a geometry of an incompatible table type (text in a `POLYGON` table, a line in a `POINT` table) raises `RuntimeError` with the exporter message.
- The spatial index requires `sqlite3.dll` with `rtree`. If the process loads a `sqlite3.dll` without it, `add` raises `RuntimeError` with `no such module: rtree`.

`create` exceptions: `ValueError` for missing or invalid `crs`; `RuntimeError` if the existing file cannot be deleted; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output. `Digi.tab.xml` is the code table above: codes `010123`, `040645` and `020402` map to `gpkg_010123` (`POINT`), `gpkg_040645` (`LINESTRING`) and `gpkg_020402` (`POLYGON`).

### Create a file from scratch

```python
import digi21.io.geopackage as geopackage
from digi21.base import DigiTab, Line, Point, Polygon

# Load the table after importing the module so it receives iogpkg:transform elements.
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

### Read and count by code and type

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

### Convert BinDouble to GeoPackage

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

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example.

### Query tables with `sqlite3`

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

### Geometry incompatible with its table type

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

The message comes from the exporter in the installation language.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.shp](shp.md) — another way to write one layer per code.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [GeoPackage format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md)
