# Leer un archivo de dibujo

El paquete `digi21.io` permite leer archivos de dibujo de Digi3D.NET. Hay un módulo por
formato, todos con la misma interfaz: una función `open` que devuelve un objeto
[`DrawingFile`](../referencia/digi21.base/drawingfile.md) iterable.

| Módulo | Formato |
|---|---|
| `digi21.io.bindouble` | BinDouble (`.bind`) |
| `digi21.io.bin` | Bin (`.bin`) |
| `digi21.io.asciidigi` | ASCII Digi (`.asc`) |
| `digi21.io.dgn` | MicroStation DGN (`.dgn`) |
| `digi21.io.dwg` | AutoCAD DWG (`.dwg`) |
| `digi21.io.dxf` | AutoCAD DXF (`.dxf`) |

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

Si se pasa una [`DigiTab`](../referencia/digi21.base/digitab.md), los códigos de las
geometrías leídas se resuelven contra ella (descripción, visibilidad, etc.):

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

- [Referencia: digi21.io](../referencia/digi21.io/README.md)
- [Referencia: DrawingFile](../referencia/digi21.base/drawingfile.md)
- [Crear geometrías](crear-geometrias.md)
