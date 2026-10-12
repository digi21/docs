# Crear un shapefile
<!-- id: crear-un-shapefile -->

El módulo `digi21.io.shp` escribe shapefiles de ESRI con el mismo exportador que la orden
[EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md). A diferencia de los
formatos de [Crear un archivo de dibujo](crear-un-archivo-de-dibujo.md), un shapefile tiene **una
capa por tipo de geometría**, así que el exportador escribe **una capa por código** en la carpeta
de destino y necesita que la tabla de códigos diga cómo se llama cada capa.

## La tabla de códigos

Cada código que se escribe necesita en la tabla de códigos:

- una **tabla de base de datos** asignada al código (atributo `table`) que exista en el esquema de
  base de datos (`databaseSchema`), con una clave primaria numérica;
- un elemento `ioshp:transform` con el nombre de la capa (`nameSHP`) y su tipo de geometría
  (`typeNewTable`: 11 para puntos, 13 para líneas y 15 para polígonos, todos con Z).

Los ejemplos de esta página usan una tabla de códigos con estos tres códigos:

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

## Escribir las capas

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

- Las capas se llaman como dice `nameSHP`; el nombre `parcelas.shp` de la ruta no se usa, solo su
  carpeta.
- La línea con el código `010123` se rechaza porque la capa de ese código es de puntos.
- `precision=3` redondea las coordenadas a 3 decimales. Con el valor por defecto, 0, no se
  redondean.
- Cada capa lleva su `.prj` con el `crs`. Si la carpeta ya tiene una capa con el mismo nombre, se
  sustituye pero **conserva su `.prj`**, y `warnings` avisa si algún `.prj` de la carpeta tiene otro
  sistema de coordenadas.

## Leer las capas

`open` recibe uno de los `.shp` y lee **todas las capas de su carpeta**:

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

El orden es el de las capas, no el de escritura. Los polígonos se leen con los vértices en el orden
contrario: el formato guarda el anillo exterior en el sentido de las agujas del reloj.

## Códigos sin configurar

Una geometría cuyo código no cumple los requisitos se rechaza, y `warnings` dice por qué. Sin tabla
de códigos, ningún código está en ella:

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

Si el código está en la tabla pero le falta la tabla de base de datos o el `nameSHP`, el aviso es el
del exportador, en el idioma de la instalación. Por ejemplo:

```
Se ha intentado almacenar una entidad con código: 010123 sin tabla asignada ni para el código ni para el traductor de SHP.  No se ha almacenado la entidad en disco.
```

## Véase también

- [Referencia: digi21.io.shp](../../referencia/digi21.io/shp.md) — parámetros, requisitos y más
  ejemplos (conversión, codificación de los `.dbf`).
- [Convertir a GeoPackage](convertir-a-geopackage.md)
- [Crear un archivo de dibujo](crear-un-archivo-de-dibujo.md)
- [Formato SHP](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md)
