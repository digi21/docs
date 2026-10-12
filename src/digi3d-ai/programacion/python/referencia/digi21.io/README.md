# digi21.io
<!-- id: digi21.io -->

Lectura y escritura de archivos de dibujo de Digi3D.AI desde Python, con los mismos importadores y
exportadores que la aplicación. Hay un **módulo independiente por formato**, y todos comparten la
misma interfaz: una función `open` que devuelve un [DrawingFile](../digi21.base/drawingfile.md)
iterable y una función `create` que devuelve un [DrawingWriter](../digi21.base/drawingwriter.md).

Se apoya en [digi21.base](../digi21.base/README.md): las geometrías que se obtienen al iterar, y las
que se escriben, son instancias de sus tipos.

## Módulos por formato

| Módulo | Formato | Extensión | Lee | Escribe | `crs` en `create` | Página |
|---|---|---|---|---|---|---|
| `digi21.io.bin` | BIN | `.bin` | Sí | Sí | Obligatorio | [bin](bin.md) |
| `digi21.io.bindouble` | BIN doble precisión | `.bind` | Sí | Sí | Obligatorio | [bindouble](bindouble.md) |
| `digi21.io.asciidigi` | ASCII de Digi | `.asc` | Sí | Sí | Obligatorio | [asciidigi](asciidigi.md) |
| `digi21.io.dgn` | MicroStation DGN V8 | `.dgn` | Sí | Sí | Obligatorio | [dgn](dgn.md) |
| `digi21.io.dwg` | AutoCAD DWG | `.dwg` | Sí | Sí | Obligatorio | [dwg](dwg.md) |
| `digi21.io.dxf` | AutoCAD DXF | `.dxf` | Sí | Sí | Obligatorio | [dxf](dxf.md) |
| `digi21.io.geojson` | GeoJSON | `.geojson` | Sí | Sí | Opcional | [geojson](geojson.md) |
| `digi21.io.kml` | KML | `.kml` | Sí | Sí | Opcional | [kml](kml.md) |
| `digi21.io.svg` | SVG | `.svg` | Sí | Sí | Opcional | [svg](svg.md) |
| `digi21.io.wkt` | Geometrías WKT | `.wkt` | Sí | Sí | Opcional | [wkt](wkt.md) |
| `digi21.io.geopackage` | OGC GeoPackage | `.gpkg` | Sí | Sí | Obligatorio | [geopackage](geopackage.md) |
| `digi21.io.shp` | ESRI Shapefile | `.shp` | Sí | Sí | Obligatorio | [shp](shp.md) |
| `digi21.io.pdf` | PDF | `.pdf` | No | Sí | Opcional | [pdf](pdf.md) |
| `digi21.io.geomedia` | Almacén GeoMedia en Access | `.mdb` | Sí | Añade a un almacén existente | Opcional | [geomedia](geomedia.md) |
| `digi21.io.postgis` | Base de datos PostGIS | `.pg` (archivo de conexión) | Sí | Añade a tablas existentes | Opcional | [postgis](postgis.md) |
| `digi21.io.ifc` | IFC | `.ifc` | Sí | Solo caras de edificios | Opcional | [ifc](ifc.md) |
| `digi21.io.vec` | VEC | `.vec` | Sí | Sí | Opcional | [vec](vec.md) |

Cada página tiene la firma de `open` y `create`, los parámetros del formato, lo que el exportador
rechaza, lo que necesita de la tabla de códigos y ejemplos ejecutados con su salida.

El formato File Geodatabase de Esri (`.gdb`) no tiene módulo: su motor abre siempre un cuadro de
diálogo para elegir el *dataset* (conjunto de clases de entidad), tanto al leer como al escribir, y
desde un programa de consola no hay nadie que lo responda.

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo a leer. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). El recorrido es perezoso: las geometrías se
leen según se itera. `DrawingFile.crs` es el sistema de coordenadas del archivo, o una cadena vacía.

Si `path` no existe, lanza `FileNotFoundError`. `digi21.io.pdf` no tiene `open`.
`digi21.io.bin` añade a `open` los parámetros `precision` y `global_origin`, porque el formato BIN no
los guarda en el archivo.

## create

```python
create(path, digitab=None, crs="", *, <parámetros del formato>) -> DrawingWriter
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo a crear. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). El exportador toma de ella la capa, el nivel, el color… de cada código. Si no se indica, se usa una vacía. |
| `crs` | `str` | Sistema de coordenadas del archivo: un WKT o `"EPSG:<código>"`. Obligatorio en los formatos que lo guardan (ver la tabla de módulos): sin él, `create` lanza `ValueError`. Para conservar el de otro archivo, pasa su `DrawingFile.crs`. |

Los **parámetros del formato** se pasan **solo por nombre** y tienen como valor por defecto el mismo
que el exportador. Son los que la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
recibe para ese formato, y están en la página de cada módulo.

Excepciones comunes a todos los módulos:

| Excepción | Cuándo |
|---|---|
| `ValueError` | Falta `crs` en un formato que lo guarda, `crs` no es un WKT ni un código EPSG válido, o un parámetro del formato está fuera de rango. |
| `FileNotFoundError` | La carpeta de `path` no existe. |
| `RuntimeError` | El exportador informa de un error, con su mensaje. |

## Lo que tienen en común

### El escritor y el gestor de contexto

`create` devuelve un [DrawingWriter](../digi21.base/drawingwriter.md). El archivo **no está completo
hasta que se cierra el escritor**: úsalo en un bloque `with`, que lo cierra al salir, o llama a
`close()`.

```python
with modulo.create("destino.ext", digitab, crs="EPSG:25830") as writer:
    writer.add(geometry)

print(writer.written, writer.rejected)
```

- `add(geometry)` devuelve `False` si la geometría no se escribe; `rejected` las cuenta.
- `written` cuenta las entidades escritas. En los formatos que no admiten varios códigos por entidad,
  una geometría con *n* códigos se escribe *n* veces.
- `warnings` es la lista de avisos del exportador: códigos sin traducción, capas creadas, geometrías
  rechazadas… Los avisos del propio exportador salen en el idioma de la instalación; los del módulo
  de Python, en inglés.

### El sistema de coordenadas

Los exportadores **no transforman coordenadas**: escriben las que reciben. `crs` solo dice en qué
sistema están. Para convertir entre formatos, pasa el `crs` del origen:

```python
origen = bind.open("parcelas.bind")
with dxf.create("parcelas.dxf", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)
```

GeoJSON y KML esperan longitud y latitud en grados: el origen ya tiene que estar en ese sistema.

Los formatos que guardan el sistema en un archivo `.prj` (BIN, ASCII de Digi, DGN, DWG, DXF y SHP)
**conservan el `.prj` que ya hubiera** junto al destino con el mismo nombre, en lugar de escribir el
`crs` que se pasa a `create`, y `warnings` lo avisa. Para usar `crs`, borra antes ese `.prj`.

### La tabla de códigos y el orden de importación

Carga la tabla de códigos con `DigiTab.load` **después** de importar todos los módulos de formato que
vayas a usar. La primera tabla que se carga en el proceso solo recibe los parámetros de traducción
(`iodgn:transform`, `ioshp:transform`, `iogpkg:transform`…) de los formatos cuyo módulo ya está
importado.

```python
import digi21.io.dgn as dgn
import digi21.io.shp as shp
from digi21.base import DigiTab

digitab = DigiTab.load("Digi.tab.xml")
```

SVG, GeoPackage, SHP, GeoMedia y PostGIS rechazan las geometrías de un código sin su elemento de
traducción en la tabla. DGN, DWG y DXF las escriben con los parámetros por defecto, en una capa o un
nivel con el nombre del código.

## Datos de los ejemplos

Los ejemplos de las páginas de cada módulo usan:

- `Digi.tab.xml`: una tabla de códigos con tres códigos, `010123` (puntos), `040645` (líneas) y
  `020402` (polígonos), con su traducción a cada formato. Cada página muestra el fragmento que
  necesita.
- `parcelas.bind`: el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md), con
  un punto, una línea, un polígono y un texto en ETRS89 / UTM 30N (EPSG:25830). Es el origen de los
  ejemplos de conversión.

## Véase también

- [digi21.base](../digi21.base/README.md)
- [DrawingFile](../digi21.base/drawingfile.md)
- [DrawingWriter](../digi21.base/drawingwriter.md)
- [Ejemplos de aplicaciones de consola](../../aplicaciones-de-consola/ejemplos/README.md)
- [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md)
