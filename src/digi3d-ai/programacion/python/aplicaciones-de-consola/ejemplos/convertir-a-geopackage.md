# Convertir a GeoPackage
<!-- id: convertir-a-geopackage -->

El módulo `digi21.io.geopackage` escribe archivos OGC GeoPackage (`.gpkg`): una base de datos
SQLite con una tabla por capa. Como en [Crear un shapefile](crear-un-shapefile.md), la tabla de
códigos indica a qué tabla se asigna cada código.

## La tabla de códigos

Cada código necesita un elemento `iogpkg:transform` con la tabla del GeoPackage (`table`), la tabla
del esquema de base de datos de la que toma los campos (`schema`) y el tipo de geometría
(`typeNewTable`: `POINT`, `LINESTRING`, `POLYGON`, `MULTIPOINT`, `MULTILINESTRING`, `MULTIPOLYGON`,
`GEOMETRYCOLLECTION` o `GEOMETRY`). La tabla del esquema tiene que tener un campo `GEOMETRY` de tipo
memo, donde el exportador guarda la geometría:

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

Los otros dos códigos de los ejemplos, `010123` y `020402`, van a las tablas `gpkg_010123`
(`POINT`) y `gpkg_020402` (`POLYGON`).

## Convertir las capas de un shapefile

Este ejemplo convierte a un GeoPackage las capas que escribe [Crear un shapefile](crear-un-shapefile.md).
El sistema de coordenadas se copia del origen con `DrawingFile.crs`:

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

- Los dos módulos se importan **antes** de `DigiTab.load`: la primera tabla de códigos que se carga
  en el proceso solo recibe los parámetros de traducción de los módulos ya importados. Si la tabla de códigos se carga
  antes de importar `digi21.io.geopackage`, todos los códigos se rechazan por no tener
  `iogpkg:transform`.
- `crs` es obligatorio. El GeoPackage guarda el código EPSG del sistema horizontal.
- Si `parcelas.gpkg` ya existe, `create` lo sustituye.

## Códigos sin tabla

Una geometría cuyo código no está en la tabla de códigos o no tiene `iogpkg:transform` se rechaza, y
`warnings` indica el motivo del rechazo una vez por código. Si no se proporciona una tabla de códigos, se rechazan todos los códigos:

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

Con un código de la tabla sin `iogpkg:transform`, el aviso es
`The code 040645 has no iogpkg:transform element in the digitab: its geometries are not written.`.
Al añadir una geometría cuyo tipo no coincide con el de la tabla, como una línea con un código cuya tabla es `POINT`, se lanza
`RuntimeError` con el mensaje del exportador.

## El módulo rtree de SQLite

El índice espacial de GeoPackage es una tabla virtual R*Tree. Si el `sqlite3.dll` que carga el
proceso no tiene el módulo R*Tree, `add` lanza `RuntimeError` con el mensaje `no such module: rtree`. El
exportador de GeoPackage se compila con un SQLite que incluye el módulo R*Tree; el error aparece cuando el
`sqlite3.dll` que se carga es otro: el de la carpeta del programa, si otro componente lo ha
sustituido, o uno que el proceso ya había cargado.

## Véase también

- [Referencia: digi21.io.geopackage](../../referencia/digi21.io/geopackage.md) — requisitos y más
  ejemplos (crear desde cero, consultar las tablas con `sqlite3`).
- [Crear un shapefile](crear-un-shapefile.md)
- [Formato GeoPackage](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md)
