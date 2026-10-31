# Creating a shapefile
<!-- id: crear-un-shapefile -->
<!-- origen: 88349243119600101c55b4048a65a22bcd67cfa0 -->

`digi21.io.shp` writes ESRI shapefiles using the same exporter as [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md). Unlike [Creating a drawing file](crear-un-archivo-de-dibujo.md) formats, shapefiles have **one layer per geometry type**, so the exporter writes **one layer per code** in the destination folder and requires layer names in the codes table.

## Codes table

Each exported code requires:

- A **database table** assigned through `table`, present in `databaseSchema` and with a numeric primary key.
- An `ioshp:transform` with layer name (`nameSHP`) and geometry type (`typeNewTable`: 11 for points, 13 for lines, 15 for polygons, all with Z).

These examples use a codes table containing three codes:

```xml
<databaseSchema>
  <table name="Prueba" description="">
    <field name="Id" title="Id" type="N" length="11" primaryKey="1" />
    <field name="Nombre" title="Nombre" type="C" length="50" />
  </table>
</databaseSchema>
<codes>
  <code name="010123" description="Límite provincial" type="1" table="Prueba" …>
    <io>
      <ioshp:transform export="1" nameSHP="shp_010123" typeNewTable="11" />
  …
  <code name="040645" description="Árbol puntual" type="0" table="Prueba" …>
    <io>
      <ioshp:transform export="1" nameSHP="shp_040645" typeNewTable="13" />
  …
  <code name="020402" description="Texto cotas" type="1" table="Prueba" …>
    <io>
      <ioshp:transform export="1" nameSHP="shp_020402" typeNewTable="15" />
```

## Writing layers

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
    if not writer.add(Line(["010123"], [(500000, 4400000, 650), (500010, 4400010, 650)])):
        print("Rechazada:", writer.warnings[-1])

print(writer.written, "entidades escritas,", writer.rejected, "rechazada")
print(sorted(os.listdir("capas")))
```

```
Rechazada: The format cannot store a line with the code 010123.
3 entidades escritas, 1 rechazada
['shp_010123.cpg', 'shp_010123.dbf', 'shp_010123.prj', 'shp_010123.shp', 'shp_010123.shx', 'shp_020402.cpg', 'shp_020402.dbf', 'shp_020402.prj', 'shp_020402.shp', 'shp_020402.shx', 'shp_040645.cpg', 'shp_040645.dbf', 'shp_040645.prj', 'shp_040645.shp', 'shp_040645.shx']
```

- Layers use `nameSHP`; only the folder of `parcelas.shp` is used.
- The line with code `010123` is rejected because its layer contains points.
- `precision=3` rounds coordinates to 3 decimal places. Default 0 leaves them unrounded.
- Each layer has a `.prj` containing `crs`. Existing layers with the same name are replaced while **retaining their `.prj`**. `warnings` reports any folder `.prj` with a different coordinate system.

## Reading layers

`open` takes one `.shp` and reads **all layers in its folder**:

```python
import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
dibujo = shp.open("capas/shp_040645.shp", digitab)
print(dibujo.crs[:30])
for geometry in dibujo:
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices")
```

```
PROJCS["ETRS89 / UTM zone 30N"
Point ['010123'] 1 vértices
Polygon ['020402'] 4 vértices
Line ['040645'] 3 vértices
```

Geometries are read in layer order, rather than insertion order. The example's polygon vertices are read in reverse insertion order: the format stores exterior rings clockwise.

## Unconfigured codes

A geometry whose code fails the requirements is rejected; `warnings` explains why. Without a codes table, all codes are rejected:

```python
import digi21.io.shp as shp
from digi21.base import Line

with shp.create("sin-tabla.shp", crs="EPSG:25830") as writer:
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)]))

print(writer.written, writer.rejected)
for aviso in writer.warnings:
    print(aviso)
```

```
0 1
The code LINDE is not in the digitab.
```

If a code exists in the table but lacks its database table or `nameSHP`, the exporter provides the warning in the installation language. For example:

```
Se ha intentado almacenar una entidad con código: 010123 sin tabla asignada ni para el código ni para el traductor de SHP.  No se ha almacenado la entidad en disco.
```

## See also

- [Reference: digi21.io.shp](../../referencia/digi21.io/shp.md): parameters, requirements and more examples (conversion and `.dbf` encoding).
- [Converting to GeoPackage](convertir-a-geopackage.md)
- [Creating a drawing file](crear-un-archivo-de-dibujo.md)
- [SHP format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md)
