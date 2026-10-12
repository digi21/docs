# digi21.io
<!-- id: digi21.io -->

Lectura y escritura de archivos de dibujo de Digi3D.AI. Hay un **módulo independiente por
formato**, y todos comparten la misma interfaz: una función `open` que devuelve un
[DrawingFile](../digi21.base/drawingfile.md) iterable y una función `create` que devuelve un
[DrawingWriter](../digi21.base/drawingwriter.md).

Se apoya en [digi21.base](../digi21.base/README.md): las geometrías que se obtienen al
iterar, y las que se escriben, son instancias de sus tipos.

## Módulos por formato

| Módulo | Formato | Extensión habitual |
|---|---|---|
| `digi21.io.bindouble` | BinDouble | `.bind` |
| `digi21.io.bin` | Bin | `.bin` |
| `digi21.io.asciidigi` | ASCII Digi | `.asc` |
| `digi21.io.dgn` | MicroStation DGN | `.dgn` |
| `digi21.io.dwg` | AutoCAD DWG | `.dwg` |
| `digi21.io.dxf` | AutoCAD DXF | `.dxf` |
| `digi21.io.geojson` | GeoJSON | `.geojson` |
| `digi21.io.kml` | KML | `.kml` |
| `digi21.io.svg` | SVG | `.svg` |
| `digi21.io.wkt` | Geometrías WKT | `.wkt` |
| `digi21.io.geopackage` | OGC GeoPackage | `.gpkg` |
| `digi21.io.shp` | ESRI Shapefile | `.shp` |
| `digi21.io.pdf` | PDF (solo escritura) | `.pdf` |
| `digi21.io.geomedia` | Almacén GeoMedia en Access | `.mdb` |
| `digi21.io.postgis` | Base de datos PostGIS | `.pg` (archivo de conexión) |
| `digi21.io.ifc` | IFC | `.ifc` |
| `digi21.io.vec` | VEC | `.vec` |

El formato File Geodatabase de Esri (`.gdb`) no tiene módulo: su motor abre siempre un cuadro de
diálogo para elegir el *dataset* (conjunto de clases de entidad), tanto al leer como al escribir,
y desde un programa de consola no hay nadie que lo responda.

Carga la tabla de códigos con `DigiTab.load` **después** de importar todos los módulos de formato
que vayas a usar: la primera tabla que se carga en el proceso solo recibe los parámetros de
traducción (`ioshp:transform`, `iogpkg:transform`…) de los formatos cuyo módulo ya está importado.

## `open`

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo a leer. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). Si `path` no es un archivo existente,
lanza `FileNotFoundError` en todos los módulos salvo `bin` y `bindouble`. `digi21.io.pdf` no tiene
`open`: su motor no lee PDF.

## `create`

```python
create(path, digitab=None, crs="", *, <parámetros del formato>) -> DrawingWriter
```

Crea el archivo `path` y devuelve un [DrawingWriter](../digi21.base/drawingwriter.md) para
escribir geometrías en él. Si el archivo ya existe, se sustituye al cerrar el escritor.

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo a crear. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). El exportador toma de ella la capa, el nivel, el color… de cada código. Si no se indica, se usa una vacía. |
| `crs` | `str` | Sistema de coordenadas del archivo: un WKT o `"EPSG:<código>"`. Es **obligatorio** en los formatos que lo guardan (BIN, BinDouble, ASCII Digi, DGN, DWG, DXF, GeoPackage y SHP): sin él, `create` lanza `ValueError`. En los demás es opcional (ver la sección de cada formato). Para conservar el de otro archivo, pasa su [`DrawingFile.crs`](../digi21.base/drawingfile.md). |

Los **parámetros del formato** se pasan **solo por nombre** y tienen como valor por defecto el
mismo que el exportador. Son los mismos que la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
recibe para ese formato; su significado está en la página de cada formato en
[Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md).
Un `code_criteria` o un `version` fuera de rango lanza `ValueError`.

### `digi21.io.bin`

Página del formato: [BIN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `precision` | `int` | `2` | Número de decimales que se guardan. Las coordenadas se guardan como enteros de 32 bits. |
| `global_origin` | `tuple` | `(0.0, 0.0, 0.0)` | Origen `(x, y, z)` que se resta a las coordenadas antes de guardarlas. |

> El formato BIN no tiene cabecera de archivo, así que no guarda ni `precision` ni
> `global_origin`: `open` lo lee con 2 decimales y origen `(0, 0, 0)`. Los códigos se guardan con 6
> caracteres como máximo: `"VERTICE"` se escribe `"VERTIC"`, y `warnings` incluye un aviso por cada
> código truncado. El sistema de coordenadas se guarda en un archivo `.prj` junto al dibujo.

### `digi21.io.bindouble`

Página del formato: [BIN doble precisión](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `data_model` | `str` | `""` | Nombre del modelo de datos de la base de datos de atributos. |
| `connection_string` | `str` | `""` | Cadena de conexión de esa base de datos. Si está vacía, no se usa base de datos. |

> El sistema de coordenadas se guarda en la cabecera del archivo.

### `digi21.io.asciidigi`

Página del formato: [ASCII de Digi](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ascii-de-digi.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `decimals` | `int` | `3` | Número de decimales de cada coordenada. |

> El formato guarda puntos, líneas, polígonos con sus contornos interiores, textos, imágenes y
> elementos complejos cuyas geometrías son puntos o líneas. `add` devuelve `False` con cualquier
> otro tipo. El sistema de coordenadas se guarda en un archivo `.prj` junto al dibujo.

### `digi21.io.dgn`

Página del formato: [DGN](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `template` | `str` | `""` | Archivo `.dgn` que se usa como semilla. Si está vacío, se crea un dibujo nuevo. |
| `code_criteria` | `int` | `0` | Criterio para códigos, de 0 a 18 (0 es **Nivel**): posición en la lista **Criterio para códigos** del cuadro de diálogo. |
| `use_cell_file` | `bool` | `False` | Toma las células de un archivo de células de MicroStation. |
| `cell_file` | `str` | `""` | Archivo `.cel`. Solo se usa si `use_cell_file` es `True`. |
| `transform_cell_levels` | `bool` | `False` | Asigna a cada elemento de la célula el nivel, el color, el estilo y el grosor del código. Solo se usa si `use_cell_file` es `True`. |
| `import_palette` | `bool` | `True` | Al abrir un archivo existente, importa su paleta. |
| `use_dgn_colors` | `bool` | `True` | Al leer, las entidades toman el color del archivo DGN. |
| `import_cells_as_point` | `bool` | `True` | Al leer, las células se convierten en puntos. |
| `spline_increment` | `float` | `1.0` | Distancia entre vértices al convertir las splines en polilíneas al leer. |
| `unknown_code_format` | `str` | `"$(Level)"` | Nombre del código que se crea para los elementos sin traducción en la tabla de códigos. |
| `resource_files` | `str` | `""` | Rutas de archivos de recursos de MicroStation separadas por punto y coma. |

> Una geometría cuyo código no tiene traducción DGN en la tabla de códigos se escribe en un nivel
> con el nombre del código y con los parámetros por defecto, y `warnings` lo indica. Si la tabla
> dice que el código no se exporta, `add` devuelve `False`. Carga la `digitab` con `DigiTab.load`
> **después** de `import digi21.io.dgn`: la primera tabla que se carga en el proceso solo recibe
> la traducción de los formatos cuyo módulo ya se ha importado. Al leer, cada elemento tiene solo
> el código de su nivel. El sistema de coordenadas se guarda en un archivo `.prj` junto al dibujo.

### `digi21.io.dwg`

Página del formato: [DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `version` | `int` | `3` | Versión de AutoCAD: 0 = 11/12, 1 = 13, 2 = 14, 3 = 2000, 4 = 2004, 5 = 2007, 6 = 2010, 7 = 2013. |
| `template` | `str` | `""` | Archivo `.dwg` que se usa como plantilla. Si está vacío, se crea un dibujo nuevo. |
| `import_blocks` | `bool` | `False` | Al abrir un archivo existente, crea un `.bin` por cada bloque en `blocks_folder`. |
| `blocks_folder` | `str` | `""` | Carpeta de los `.bin` de los bloques. |
| `import_blocks_as_point` | `bool` | `True` | Al leer, cada referencia de bloque se convierte en un punto. |
| `import_palette` | `bool` | `False` | Al abrir un archivo existente, sustituye la paleta por la de AutoCAD. |
| `use_drawing_colors` | `bool` | `False` | Las entidades con color propio en el archivo conservan ese color. |

> El exportador de DWG no escribe polígonos ni elementos complejos: `add` devuelve `False` y
> `warnings` recoge el error. Tampoco escribe las geometrías cuyo código la tabla dice que no se
> exporta. Si el archivo no se puede guardar al cerrar el escritor, `warnings` recoge el error. El
> sistema de coordenadas se guarda en un archivo `.prj` junto al dibujo.

### `digi21.io.dxf`

Página del formato: [DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) (los archivos DXF los trata el mismo exportador).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `version` | `int` | `3` | Versión de AutoCAD, con los mismos valores que en `digi21.io.dwg`. |
| `binary` | `bool` | `False` | Escribe un DXF binario en lugar de uno ASCII. |
| `import_blocks_as_point` | `bool` | `True` | Al leer, cada referencia de bloque se convierte en un punto. |
| `use_drawing_colors` | `bool` | `False` | Las entidades con color propio en el archivo conservan ese color. |

> Como en DWG, los polígonos no se escriben. El sistema de coordenadas se guarda en un archivo
> `.prj` junto al dibujo.

### `digi21.io.geojson`

Página del formato: [GeoJSON](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geojson.md).

No tiene parámetros del formato.

> El exportador escribe las coordenadas **sin transformarlas**, y GeoJSON (RFC 7946) espera longitud
> y latitud WGS 84 en grados: pásale geometrías en ese sistema. `crs` es opcional y no se guarda; si
> se indica y no es el que declara el motor (WGS 84, EPSG:4979), `warnings` lo avisa. Los textos se
> escriben como puntos con el texto en la propiedad `text`. Solo se guarda el primer código de cada
> geometría, en la propiedad `Layer`, que es la que `open` usa como código. Una geometría con varios
> códigos se escribe una vez por código. Las coordenadas se escriben con 6 decimales.

### `digi21.io.kml`

Página del formato: [KML](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/kml.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `title` | `str` | `""` | Nombre del documento KML. |
| `description` | `str` | `""` | Descripción del documento KML. |

> Como en GeoJSON, las coordenadas se escriben **sin transformarlas**: longitud y latitud WGS 84 en
> grados y altura sobre el geoide EGM96. `crs` es opcional y no se guarda. El exportador no escribe
> textos (`add` devuelve `False`). Las coordenadas se escriben con **6 cifras significativas**: una
> latitud de 40 grados sale con 4 decimales (unos 11 m). El archivo se escribe al cerrar el escritor.

### `digi21.io.svg`

Página del formato: [SVG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/svg.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `width` | `int` | `400` | Ancho del lienzo en píxeles, de 1 a 100000. El alto mantiene la proporción del dibujo. |

> Cada código necesita un elemento `iosvg:transform` en la tabla de códigos (color, grosor,
> relleno…): sin él, `add` devuelve `False` y `warnings` lo explica. SVG es 2D: al releer, la Z es 0,
> los polígonos son líneas cerradas y los textos no tienen altura. `crs` es opcional y no se guarda.
> El archivo se escribe al cerrar el escritor.

### `digi21.io.wkt`

Página del formato: [WKT](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/wkt.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `width` | `int` | `400` | Parámetro de la línea de órdenes del formato. El exportador actual no lo usa. |

> El archivo tiene una geometría WKT por línea, sin código ni sistema de coordenadas: `crs` es
> opcional y, al releer, el código de cada geometría no es el que se escribió. Los textos se
> escriben como puntos.

### `digi21.io.geopackage`

Página del formato: [GeoPackage](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geopackage.md).

No tiene parámetros del formato. `crs` es **obligatorio**: el archivo guarda su código EPSG.

> Si el archivo existe, `create` lo **sustituye** antes de escribir (después de comprobar el `crs`).
> Cada código necesita en la tabla de códigos un elemento `iogpkg:transform` con la tabla del
> GeoPackage, la tabla del esquema de base de datos y el tipo de geometría:
>
> ```xml
> <iogpkg:transform table="lindes" schema="Parcelas" typeNewTable="LINESTRING" />
> ```
>
> La tabla del esquema (`schema`) tiene que existir en el `databaseSchema` de la tabla de códigos y
> tener un campo `GEOMETRY` de tipo memo (`type="M"`). Un código sin `iogpkg:transform` se rechaza y
> `warnings` lo explica; una geometría de otro tipo que su tabla (una línea en una tabla `POINT`)
> lanza `RuntimeError`. El índice espacial de GeoPackage necesita un `sqlite3.dll` con el módulo
> `rtree`: sin él, `add` lanza `RuntimeError` con el mensaje `no such module: rtree`. Si las capas de
> un GeoPackage usan varios sistemas de coordenadas, `open` pregunta cuál usar con un cuadro de
> diálogo.

### `digi21.io.shp`

Página del formato: [SHP](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `precision` | `int` | `0` | Decimales a los que se redondean las coordenadas, de 0 a 12. Con 0 no se redondean. |
| `encoding` | `int` | `0xFF` | Identificador de idioma (LDID, *language driver ID*) de la codificación de los `.dbf`, de 0 a 255. |

> El exportador escribe **una capa por código** (`.shp`, `.shx`, `.dbf`, `.prj` y `.cpg`) en la
> carpeta de `path`: el nombre de `path` no se usa. Cada código necesita en la tabla de códigos:
>
> - un elemento `ioshp:transform` con `nameSHP`, el nombre de la capa, y `typeNewTable`, su tipo de
>   geometría (11 = puntos, 13 = líneas, 15 = polígonos, con Z);
> - una tabla de base de datos asignada al código (`table`) que exista en el `databaseSchema`.
>
> ```xml
> <code name="LINDE" … table="Parcelas">
>   <io>
>     <ioshp:transform export="1" nameSHP="lindes" typeNewTable="13" />
> ```
>
> Las geometrías de un código que no lo cumple se rechazan y `warnings` dice qué falta. Una geometría
> de otro tipo que su capa (una línea en una capa de puntos) también se rechaza. Las capas con el
> mismo nombre se sustituyen y las demás de la carpeta se conservan; una capa que se sustituye
> **conserva su `.prj`**, y `warnings` avisa si la carpeta tiene `.prj` con otro sistema de
> coordenadas. Al releer, los polígonos tienen los vértices en el orden contrario (el formato guarda
> el anillo exterior en el sentido de las agujas del reloj). `open` lee todas las capas de la carpeta
> del archivo que se le pasa.

### `digi21.io.pdf`

Página del formato: [PDF](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/pdf.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `page_size` | `str` | `"auto"` | Tamaño de la página: `"auto"` (la extensión del dibujo a la escala `scale`) o uno de `"A0"`…`"A5"`, `"RA0"`…`"RA5"`, `"B0"`…`"B5"`, `"Quarto"`, `"Foolscap"`, `"Executive"`, `"GovernmentLetter"`, `"Letter"`, `"Legal"`, `"Ledger"`, `"Tabloid"`, `"Post"`, `"Crown"`, `"LargePost"`, `"Demy"`, `"Medium"`, `"Royal"`, `"Elephant"`, `"DoubleDemy"`, `"QuadDemy"`, `"STMT"`, `"Folio"`, `"Statement"`, `"Size10x14"`. |
| `scale` | `float` | `1000.0` | Denominador de la escala (1000 es 1:1000), mayor que 0. |
| `explode_symbology` | `bool` | `True` | Dibuja la simbología de cada código (tipos de línea, símbolos). |
| `title` | `str` | `""` | Título en la información del documento. Vacío, el exportador conserva el último título usado en la aplicación. |

> El PDF tiene una sola página, que se dibuja al cerrar el escritor. No se dibujan las geometrías de
> los códigos que la tabla de códigos marca como no imprimibles. Los símbolos no se dibujan: una
> tabla de códigos cargada con `DigiTab.load` no tiene las fuentes de símbolos. `crs` es opcional y
> no se guarda.

### `digi21.io.geomedia`

Página del formato: [GeoMedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md).

No tiene parámetros del formato.

> El exportador **no crea** la base de datos ni sus capas: `path` tiene que ser un almacén GeoMedia en
> Access cuyas clases de entidad ya están en la tabla `GFeatures`, y `create` le **añade** las
> geometrías (conserva las que ya tiene). Si `path` no existe, `create` lanza `FileNotFoundError`; un
> almacén sin capas (como los archivos semilla de GeoMedia) lanza `RuntimeError`. Cada código
> necesita un elemento `ioGeomedia:transform` con su clase de entidad. El sistema de coordenadas es el
> de la tabla `GCoordSystem`: `crs` es opcional y, si no coincide, `warnings` lo avisa. Necesita el
> proveedor Microsoft Access Database Engine (`Microsoft.ACE.OLEDB.12.0`).

### `digi21.io.postgis`

Página del formato: [PostGIS](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/postgis.md).

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `server` | `str` | `"localhost"` | Servidor de PostgreSQL. |
| `port` | `int` | `5432` | Puerto, de 1 a 65535. |
| `user` | `str` | `""` | Usuario. |
| `password` | `str` | `""` | Contraseña. |
| `database` | `str` | `""` | Base de datos. |

> `path` es el **archivo de conexión** `.pg`, no el dibujo. Si se indica `database`, `create`
> escribe en `path` la conexión con estos parámetros (la contraseña en texto, como la aplicación);
> si no, `path` tiene que existir. Los valores no pueden tener comillas simples, barras invertidas ni
> caracteres fuera de la página de códigos de Windows. El exportador **no crea tablas**: cada código
> necesita un elemento `ioPostGis:transform` cuya tabla exista en la base de datos con una columna de
> geometría, y `create` le añade las geometrías. El sistema de coordenadas es el de las capas: `crs`
> es opcional.

### `digi21.io.ifc`

Página del formato: [IFC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md).

No tiene parámetros del formato.

> El exportador solo escribe **caras**: líneas o polígonos de más de tres vértices cuyos códigos son
> `LIMEXT` seguido de las componentes x, y y z de su normal. Una cara cuya normal tiene una z menor
> que 0,1 es un muro (`IfcWall`) y el resto un forjado (`IfcSlab`); las dos se extruyen 0,3 m a lo
> largo de la normal. Como una geometría no repite códigos, las componentes iguales de la normal se
> escriben distintas: `["LIMEXT", "1", "0", "0.0"]`. Cualquier otra geometría se rechaza y `warnings`
> lo explica. Al releer, cada cara es un complejo con el código `IfcWall` o `IfcSlab` cuyas líneas son
> las aristas del sólido. El motor declara un sistema local fijo: `crs` es opcional.

### `digi21.io.vec`

Página del formato: [VEC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/vec.md).

No tiene parámetros del formato.

> El exportador escribe en un archivo temporal junto a `path` y lo sustituye al cerrar el escritor;
> si no puede, `close` lanza `RuntimeError`. No escribe complejos. La capa de cada código sale de su
> elemento `iovec:transform`; sin él, el exportador asigna una capa nueva al código, y al releer el
> código de la geometría es el número de esa capa. El archivo no guarda el sistema de coordenadas:
> `crs` es opcional.

### El archivo `.prj`

Los formatos que guardan el sistema de coordenadas en un archivo `.prj` (todos menos BinDouble)
**conservan el `.prj` que ya hubiera** junto al destino con el mismo nombre, en lugar de escribir
el `crs` que se pasa a `create`. En ese caso `warnings` incluye un aviso. Para usar `crs`, borra
antes ese `.prj`.

## Ejemplo

```python
import digi21.io.bin as bin_
import digi21.io.dxf as dxf

origen = bin_.open("parcelas.bin")
with dxf.create("parcelas.dxf", crs=origen.crs, version=7) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "entidades escritas,", writer.rejected, "rechazadas")
```

## Véase también

- [DrawingFile](../digi21.base/drawingfile.md)
- [DrawingWriter](../digi21.base/drawingwriter.md)
- [Curso: leer un archivo de dibujo](../../aplicaciones-de-consola/ejemplos/leer-un-archivo-de-dibujo.md)
- [Curso: crear un archivo de dibujo](../../aplicaciones-de-consola/ejemplos/crear-un-archivo-de-dibujo.md)
