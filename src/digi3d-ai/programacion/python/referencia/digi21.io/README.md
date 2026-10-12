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

## `open`

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo a leer. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md).

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
| `crs` | `str` | Sistema de coordenadas del archivo: un WKT o `"EPSG:<código>"`. Los seis formatos lo guardan, así que es **obligatorio**: sin él, `create` lanza `ValueError`. Para conservar el de otro archivo, pasa su [`DrawingFile.crs`](../digi21.base/drawingfile.md). |

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

> El archivo no guarda ni `precision` ni `global_origin`: `open` lo lee con 2 decimales y origen
> `(0, 0, 0)`. Los códigos se guardan con 6 caracteres como máximo: `"VERTICE"` se escribe
> `"VERTIC"`. El sistema de coordenadas se guarda en un archivo `.prj` junto al dibujo.

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

> El exportador de ASCII de Digi escribe los polígonos sin vértices, y al leer el archivo la
> entidad anterior gana un vértice erróneo. No escribas polígonos en este formato. Los elementos
> complejos se escriben, pero al leer el archivo no aparecen. El sistema de
> coordenadas se guarda en un archivo `.prj` junto al dibujo.

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

> El exportador de DGN **descarta sin avisar** las geometrías cuyo código no tiene traducción
> DGN en la tabla de códigos: pasa una `digitab` que defina esos códigos, y cárgala con
> `DigiTab.load` **después** de `import digi21.io.dgn` (cargada antes, la tabla no tiene la
> traducción DGN y el archivo queda vacío sin ningún error). Al leer, cada elemento
> tiene solo el código de su nivel. El sistema de coordenadas se guarda en un archivo `.prj` junto
> al dibujo.

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

> El exportador de DWG no escribe polígonos: `add` devuelve `False` y `warnings` recoge el
> error. El sistema de coordenadas se guarda en un archivo `.prj` junto al dibujo.

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
