# digi21.io.postgis
<!-- id: digi21.io.postgis -->
<!-- origen: 099b2265834d0070b182fe1d9536fb34d2aa41b4 -->

Module: [digi21.io](README.md)

Reads [PostGIS](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md) database layers and **adds** geometries. The path passed to `open` and `create` is the `.pg` **connection file**, rather than a drawing. The exporter creates no tables.

```python
import digi21.io.postgis as postgis
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.pg` connection file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table with each code's `ioPostGis:transform`. An empty one is used if omitted. |

Connects to the connection file's database and returns a [DrawingFile](../digi21.base/drawingfile.md) containing geometries from its layers: tables with a geometry column. Raises `FileNotFoundError` if `path` does not exist, or `RuntimeError` with the server message if connection fails.

## create

```python
create(path, digitab=None, crs="", *, server="localhost", port=5432, user="", password="",
       database="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.pg` connection file path. If `database` is supplied, `create` writes it; otherwise it must exist. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. **Essential**: each code needs an `ioPostGis:transform` specifying its table. |
| `crs` | `str` | `""` | Optional. Uses layer systems; a different `crs` is reported in `warnings`. |
| `server` | `str` | `"localhost"` | PostgreSQL server. |
| `port` | `int` | `5432` | Port, 1 through 65535 inclusive. Out-of-range values raise `ValueError`. |
| `user` | `str` | `""` | Username. |
| `password` | `str` | `""` | Password. |
| `database` | `str` | `""` | Database. If `database` is nonempty, `create` writes `server`, `port`, `user`, `password` and `database` to `path`. |

Parameters from `server` onwards are PostGIS's [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters, in the same order, and are keyword-only.

Restrictions for `server`, `user`, `password` and `database` (violations raise `ValueError`):

- No line breaks.
- Cannot contain both single and double quotes, because the connection file delimits values with whichever quote they do not contain.
- No characters outside the Windows ANSI code page, which is used to write the connection file.

The connection file stores the password **as plain text**, as does the application.

Code table requirement: each written code needs an `ioPostGis:transform` whose table (`table`) exists in the database with a geometry column:

```xml
<code name="020402" description="Texto cotas" type="1" …>
  <io>
    <ioPostGis:transform table="COTA" textHeight="1.000000" />
```

`create` exceptions: `ValueError` for invalid connection parameters; `FileNotFoundError` if `database` is omitted and `path` does not exist; `RuntimeError` with the exporter message if connection fails.

## Examples

The first three examples **were not run**: no PostGIS server was available. The last two need no server and were run with Python 3.12; their output is actual. `modelo.tab.xml` represents a code table with each code's `ioPostGis:transform`.

### Create a connection file and add geometries

<!-- not executed -->
```python
import digi21.io.postgis as postgis
from digi21.base import DigiTab, Line, Point

digitab = DigiTab.load("modelo.tab.xml")
with postgis.create("conexion.pg", digitab, server="servidor", port=5432,
                    user="usuario", password="contraseña", database="cartografia") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
for aviso in writer.warnings:
    print(aviso)
```

Subsequent calls can use `conexion.pg` without repeating connection details: `postgis.create("conexion.pg", digitab)`.

### Read and count by code

<!-- not executed -->
```python
import collections

import digi21.io.postgis as postgis
from digi21.base import DigiTab

digitab = DigiTab.load("modelo.tab.xml")
conteo = collections.Counter()
for geometry in postgis.open("conexion.pg", digitab):
    conteo[geometry.codes[0].code] += 1

for codigo, n in conteo.most_common():
    print(codigo, n)
```

### Convert BinDouble to PostGIS

<!-- not executed -->
```python
import digi21.io.bindouble as bind
import digi21.io.postgis as postgis
from digi21.base import DigiTab

digitab = DigiTab.load("modelo.tab.xml")
origen = bind.open("parcelas.bind", digitab)
with postgis.create("conexion.pg", digitab) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("No se ha escrito:", type(geometry).__name__, [c.code for c in geometry.codes])

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

`parcelas.bind` is created by the first [digi21.io.bindouble](bindouble.md) example. Geometries must use the layers' coordinate system.

### Connection parameter errors

```python
import digi21.io.postgis as postgis

try:
    postgis.create("no-existe.pg")
except FileNotFoundError as error:
    print("FileNotFoundError:", error)

try:
    postgis.create("conexion.pg", server="servidor", port=70000, database="cartografia")
except ValueError as error:
    print("ValueError:", error)
```

```
FileNotFoundError: No such file: 'no-existe.pg'. Pass database (and the rest of the connection) to write the .pg connection file.
ValueError: port must be between 1 and 65535.
```

### Without a server: connection file and error

```python
import digi21.io.postgis as postgis

try:
    postgis.create("local.pg", server="localhost", port=5432, user="usuario", password="clave",
                   database="cartografia")
except RuntimeError as error:
    print("RuntimeError:", str(error).splitlines()[0][:60])

with open("local.pg", encoding="mbcs") as archivo:
    print(archivo.read())
```

```
RuntimeError: Se localizó el siguiente error al conectarse con la base de
host = 'localhost' port = 5432 dbname = 'cartografia' user = 'usuario' password = 'clave'

```

`create` writes the connection file before connecting, so the file remains even if connection fails. `open` raises the same `RuntimeError` if it cannot connect.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [digi21.io.geomedia](geomedia.md) — the other module adding geometries to existing layers.
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [PostGIS format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md)
