# digi21.io.postgis
<!-- id: digi21.io.postgis -->

Módulo: [digi21.io](README.md)

Lee las capas de una base de datos [PostGIS](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md)
y les **añade** geometrías. La ruta que reciben `open` y `create` es el **archivo de conexión** `.pg`,
no un dibujo. El exportador no crea tablas.

```python
import digi21.io.postgis as postgis
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo de conexión `.pg`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional) con el `ioPostGis:transform` de cada código. Si no se indica, se usa una vacía. |

Se conecta a la base de datos del archivo de conexión y devuelve un
[DrawingFile](../digi21.base/drawingfile.md) con las geometrías de sus capas: las tablas con una
columna de geometría. Si `path` no existe, lanza `FileNotFoundError`; si no puede conectarse,
`RuntimeError` con el mensaje del servidor.

## create

```python
create(path, digitab=None, crs="", *, server="localhost", port=5432, user="", password="",
       database="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo de conexión `.pg`. Si se indica `database`, `create` lo escribe; si no, tiene que existir. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. **Imprescindible**: cada código necesita su elemento `ioPostGis:transform` con su tabla. |
| `crs` | `str` | `""` | Opcional. El sistema es el de las capas; si `crs` no coincide, `warnings` lo avisa. |
| `server` | `str` | `"localhost"` | Servidor de PostgreSQL. |
| `port` | `int` | `5432` | Puerto, de 1 a 65535. Fuera de rango, `ValueError`. |
| `user` | `str` | `""` | Usuario. |
| `password` | `str` | `""` | Contraseña. |
| `database` | `str` | `""` | Base de datos. Si no está vacía, `create` escribe `path` con estos cinco valores. |

Los parámetros a partir de `server` son los de la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
para PostGIS, en el mismo orden, y se pasan solo por nombre.

Restricciones de `server`, `user`, `password` y `database` (cada una lanza `ValueError`):

- no pueden tener saltos de línea, comillas simples ni barras invertidas;
- no pueden tener caracteres fuera de la página de códigos ANSI de Windows, porque el archivo de
  conexión se escribe en ella.

El archivo de conexión guarda la contraseña **en texto**, igual que la aplicación.

Requisito de la tabla de códigos: cada código que se escribe necesita un elemento `ioPostGis:transform`
cuya tabla (`table`) existe en la base de datos con una columna de geometría:

```xml
<code name="020402" description="Texto cotas" type="1" …>
  <io>
    <ioPostGis:transform table="COTA" textHeight="1.000000" />
```

Excepciones de `create`: `ValueError` por un parámetro de conexión no válido; `FileNotFoundError` si
no se indica `database` y `path` no existe; `RuntimeError` con el mensaje del exportador si no puede
conectarse.

## Ejemplos

Los tres primeros ejemplos **no se han ejecutado**: no había un servidor PostGIS disponible. Los dos
últimos, que no necesitan servidor, se han ejecutado con Python 3.12; su salida es la real. `modelo.tab.xml` representa una tabla de
códigos con el `ioPostGis:transform` de cada código.

### Crear el archivo de conexión y añadir geometrías

<!-- no ejecutado -->
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

Las siguientes llamadas pueden usar el `conexion.pg` sin repetir los datos de conexión:
`postgis.create("conexion.pg", digitab)`.

### Leer y contar por código

<!-- no ejecutado -->
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

### Convertir un archivo BinDouble a PostGIS

<!-- no ejecutado -->
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

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md). Las
geometrías tienen que estar en el sistema de coordenadas de las capas.

### Errores de los parámetros de conexión

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

### Sin servidor: el archivo de conexión y el error

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

`create` escribe el archivo de conexión antes de conectarse, así que el archivo queda escrito aunque
la conexión falle. `open` lanza el mismo `RuntimeError` si no puede conectarse.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.geomedia](geomedia.md) — el otro módulo que añade geometrías a capas que ya existen.
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato PostGIS](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md)
