# Console applications
<!-- id: aplicaciones-de-consola -->
<!-- origen: 5152044ab13a21631dae26df0f9b1d41654dbc04 -->

Console applications are Python programs running in an interpreter **outside Digi3D.AI**, either the **interpreter included with the program** or your own Python 3.12. Use them to **read, process and create drawing files** (convert formats, extract information, generate reports, perform batch checks…) without opening the program.

> Digi3D.AI **includes Python 3.12** in its installation folder, with `digi21` available. See [Bundled interpreter, pip and virtual environments](pip-y-entornos-virtuales.md).

Console applications use two packages:

| Package | Purpose |
| --- | --- |
| `digi21.base` | Core types: codes, geometries, codes tables and camera. Does not open or create files. |
| `digi21.io.<formato>` | Reads (`open`) and writes (`create`) drawing files. One module per format (`bin`, `bindouble`, `asciidigi`, `dgn`, `dwg`, `dxf`, `geojson`, `kml`, `svg`, `wkt`, `geopackage`, `shp`, `pdf`, `geomedia`, `postgis`, `ifc`, `vec`), each with its own page and examples in the [digi21.io reference](../referencia/digi21.io/README.md). |

`digi21.io` builds on `digi21.base`: opening a file returns geometries that are instances of `digi21.base` types; creating a file writes geometries of those types.

> The `digi3d` object is **unavailable** here: it exists only inside Digi3D.AI, in the [Python pane](../panel-de-python/README.md) and [quality controls](../controles-de-calidad/README.md). Console applications work with **files**, rather than the program's active drawing.

## Quick look

```python
import digi21.io.bindouble as bind

drawing = bind.open("ciudad.bind")
for geometry in drawing:
    print(type(geometry).__name__, len(geometry), "vértices")
```

```python
import digi21.io.bindouble as bind
import digi21.io.dxf as dxf

origen = bind.open("ciudad.bind")
with dxf.create("ciudad.dxf", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)
```

```python
from digi21.base import Line, Polygon

linea = Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])
print(linea.perimeter_2d)

if linea.crosses(otra_linea):
    print("Las líneas se cruzan")
```

## Memory ownership

> Python releases geometries **created from Python** that do not belong to a container. Once a geometry is **added to a container** (such as a `Polygon` hole or `Complex` child), the container assumes ownership and releases it. Geometries **returned when iterating** a file belong to the file: treat them as read-only during iteration.

## Links

- [Bundled interpreter, pip and virtual environments](pip-y-entornos-virtuales.md): use Digi3D.AI's Python and install third-party packages (numpy…) in a virtual environment.
- [Programming examples](ejemplos/README.md): learn by reading and creating files, creating geometries and querying spatial relationships.
- [API reference](../referencia/README.md): `digi21.base` and `digi21.io`.
