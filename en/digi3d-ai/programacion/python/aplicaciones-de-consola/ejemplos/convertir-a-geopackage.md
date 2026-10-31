# Converting to GeoPackage
<!-- id: convertir-a-geopackage -->
<!-- origen: e1e3d67e2a472233c95f2663e66d1b18e9481792 -->

`digi21.io.geopackage` writes OGC GeoPackage (`.gpkg`): a SQLite database with one table per layer. As in [Creating a shapefile](crear-un-shapefile.md), the codes table assigns each code to a table.

## Codes table

Each code needs `iogpkg:transform` specifying its GeoPackage table (`table`), database schema table supplying its fields (`schema`) and geometry type (`typeNewTable`: `POINT`, `LINESTRING`, `POLYGON`, `MULTIPOINT`, `MULTILINESTRING`, `MULTIPOLYGON`, `GEOMETRYCOLLECTION` or `GEOMETRY`). The schema table requires a memo field `GEOMETRY` for storing the geometry:

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
  …
```

The examples' other codes, `010123` and `020402`, map to `gpkg_010123` (`POINT`) and `gpkg_020402` (`POLYGON`).

## Converting shapefile layers

Converts layers written by [Creating a shapefile](crear-un-shapefile.md) to GeoPackage. Copies the source coordinate system with `DrawingFile.crs`:

```python
import digi21.io.geopackage as geopackage
import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
origen = shp.open("capas/shp_040645.shp", digitab)

with geopackage.create("parcelas.gpkg", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "entidades escritas,", writer.rejected, "rechazadas")
for geometry in geopackage.open("parcelas.gpkg", digitab):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices")
```

```
3 entidades escritas, 0 rechazadas
Point ['010123'] 1 vértices
Polygon ['020402'] 4 vértices
Line ['040645'] 3 vértices
```

- Import both modules **before** `DigiTab.load`: the process's first codes table receives translation parameters only for already imported modules. Loading it before importing `digi21.io.geopackage` rejects all codes for missing `iogpkg:transform`.
- `crs` is required. GeoPackage saves the horizontal system's EPSG code.
- `create` replaces an existing `parcelas.gpkg`.

## Codes without a table

Codes absent from the codes table or lacking `iogpkg:transform` cause geometry rejection, with `warnings` explaining why once per code. Without a codes table, all codes are rejected:

```python
import digi21.io.geopackage as geopackage
from digi21.base import Line

with geopackage.create("sin-tabla.gpkg", crs="EPSG:25830") as writer:
    print(writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)])))
print(writer.warnings)
```

```
False
['The code LINDE is not in the digitab: its geometries are not written.']
```

A table code without `iogpkg:transform` produces `The code 040645 has no iogpkg:transform element in the digitab: its geometries are not written.`. A geometry type mismatch, such as a line with a `POINT` table code, raises `RuntimeError` with the exporter message.

## SQLite rtree module

GeoPackage's spatial index is an R*Tree virtual table. If the process loads a `sqlite3.dll` without R*Tree, `add` raises `RuntimeError` with `no such module: rtree`. The exporter is built with SQLite including R*Tree; this error means a different `sqlite3.dll` was loaded: one in the program folder replaced by another component, or one already loaded by the process.

## See also

- [Reference: digi21.io.geopackage](../../referencia/digi21.io/geopackage.md): requirements and more examples (creation from scratch and querying tables with `sqlite3`).
- [Creating a shapefile](crear-un-shapefile.md)
- [GeoPackage format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md)
