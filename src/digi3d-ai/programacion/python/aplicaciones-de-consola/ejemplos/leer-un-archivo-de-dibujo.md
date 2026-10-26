# Leer un archivo de dibujo
<!-- id: leer-un-archivo-de-dibujo -->

El paquete `digi21.io` permite leer archivos de dibujo de Digi3D.AI. Hay un módulo por
formato, todos con la misma interfaz: una función `open` que devuelve un objeto
[`DrawingFile`](../../referencia/digi21.base/drawingfile.md) iterable.

| Módulo | Formato |
|---|---|
| [`digi21.io.bindouble`](../../referencia/digi21.io/bindouble.md) | BinDouble (`.bind`) |
| [`digi21.io.bin`](../../referencia/digi21.io/bin.md) | Bin (`.bin`) |
| [`digi21.io.asciidigi`](../../referencia/digi21.io/asciidigi.md) | ASCII Digi (`.asc`) |
| [`digi21.io.dgn`](../../referencia/digi21.io/dgn.md) | MicroStation DGN (`.dgn`) |
| [`digi21.io.dwg`](../../referencia/digi21.io/dwg.md) | AutoCAD DWG (`.dwg`) |
| [`digi21.io.dxf`](../../referencia/digi21.io/dxf.md) | AutoCAD DXF (`.dxf`) |

Este tema usa estos seis módulos. Los demás formatos (GeoJSON, KML, SVG, WKT, GeoPackage, SHP,
GeoMedia, PostGIS, IFC y VEC) se leen igual; la página de cada módulo, en el índice de
[digi21.io](../../referencia/digi21.io/README.md), tiene un ejemplo de lectura.

## Abrir y recorrer

```python
import digi21.io.bindouble as bind

drawing = bind.open("ciudad.bind")
for geometry in drawing:
    print(type(geometry).__name__, len(geometry), "vértices")
```

El recorrido es **perezoso**: las geometrías se leen del archivo según se itera.

## Contar geometrías por tipo

```python
import collections
import digi21.io.dgn as dgn

conteo = collections.Counter()
for geometry in dgn.open("hoja.dgn"):
    conteo[type(geometry).__name__] += 1

for tipo, n in conteo.items():
    print(f"{tipo}: {n}")
```

## Filtrar por tipo y por código

```python
import digi21.io.dxf as dxf
from digi21.base import Line

for geometry in dxf.open("planta.dxf"):
    if isinstance(geometry, Line) and geometry.closed:
        if any(c.matches("EDIF*") for c in geometry.codes):
            print("Edificio cerrado con", len(geometry), "vértices")
```

## Usar una tabla de códigos

Si pasas una [`DigiTab`](../../referencia/digi21.base/digitab.md), la descripción, la visibilidad y las demás propiedades de los códigos de las
geometrías leídas se obtienen de esa tabla:

```python
import digi21.base as base
import digi21.io.bindouble as bind

digitab = base.DigiTab.load("Digi.tab.xml")
drawing = bind.open("ciudad.bind", digitab=digitab)

for geometry in drawing:
    for code in geometry.codes:
        print(code.code)
```

## Véase también

- [Referencia: digi21.io](../../referencia/digi21.io/README.md)
- [Referencia: DrawingFile](../../referencia/digi21.base/drawingfile.md)
- [Crear geometrías](crear-geometrias.md)
- [Crear un archivo de dibujo](crear-un-archivo-de-dibujo.md)
