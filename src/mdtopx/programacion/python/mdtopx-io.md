# Paquete `mdtopx.io`
<!-- id: mdtopx-io -->

El paquete `mdtopx.io` da acceso a los **formatos de archivo** de MDTopX. Cada formato es un
**plugin** (una DLL) y tiene un módulo de Python propio dentro de uno de estos subpaquetes, según el
tipo de datos:

| Subpaquete | Tipo de datos |
|---|---|
| [`mdtopx.io.pointcloud`](mdtopx-io-pointcloud.md) | Nubes de puntos |
| [`mdtopx.io.vector`](mdtopx-io-vector.md) | Dibujo |
| [`mdtopx.io.raster`](mdtopx-io-raster.md) | Rejillas de cotas (MDE) |
| [`mdtopx.io.malla`](mdtopx-io-malla.md) | Mallas trianguladas |
| [`mdtopx.io.image`](mdtopx-io-image.md) | Imágenes en color |
| [`mdtopx.io.model`](mdtopx-io-model.md) | Modelos BIM |

Son los mismos plugins que carga MDTopX, así que un archivo se lee igual desde Python que desde el
programa.

## Interfaz común de los formatos

Todos los módulos de formato tienen la misma interfaz:

| Función | Qué hace |
|---|---|
| `info()` | Devuelve un `FormatInfo`: `name`, `extensions`, `can_read`, `can_write` y `category`. |
| `read(path, *, scene=None, progress=None, …)` | Lee el archivo a una [`Scene`](mdtopx.md#la-escena). Si no se pasa `scene`, crea una nueva; si se pasa, **añade** el contenido a la existente. Devuelve la escena. |
| `write(path, scene, *, progress=None, …)` | Escribe la escena en el archivo. |

Los formatos de solo lectura no tienen `write`, y los de solo escritura no tienen `read`. Algunos
formatos admiten opciones propias como argumentos con nombre (por ejemplo `decimals`); se detallan en
la página de cada subpaquete.

`read` y `write` lanzan `IOError` si la operación falla, y `FileNotFoundError` si no se encuentra el
plugin del formato.

```python
from mdtopx.io.pointcloud import las
from mdtopx.io.vector import dxf

# Leer dos archivos en la misma escena
escena = las.read(r"C:\datos\nube.laz")
dxf.read(r"C:\datos\ejes.dxf", scene=escena)

print(len(escena.clouds), "nubes y", len(escena.polylines), "polilíneas")
```

## Funciones del paquete

| Función | Qué hace |
|---|---|
| `load_format(name)` | Carga el plugin `plugin_<name>` y devuelve su `Format` (`info`, `read`, `write`). Cada plugin se carga una sola vez por proceso. Es lo que usan internamente los módulos de formato. |
| `plugin_dir()` | Carpeta en la que se buscan los plugins: la de la variable de entorno `MDTOPX_PLUGINS` o, si no existe, `mdtopx/io/plugins`. |
| `host(folder=None)` | Devuelve un `IoHost` con todos los plugins de la carpeta cargados. |
| `default_host()` | `IoHost` compartido con todos los plugins del paquete (se crea la primera vez). |
| `divide(input_path, params, tile_name, *, progress=None)` | Trocea un archivo de nube de puntos (ver más abajo). |

### Leer un archivo sin saber su formato

Un `IoHost` elige el plugin por la extensión del archivo (y, si la extensión la comparten varios
formatos, por su contenido). `read` y `write` devuelven un `Status` en lugar de lanzar una excepción:

```python
import mdtopx
from mdtopx.io import default_host

host = default_host()
for f in host.formats():
    print(f.name, f.extensions)

escena = mdtopx.Scene()
if host.read(r"C:\datos\terreno.grdasc", escena) == mdtopx.Status.Ok:
    print(escena.grids[0].grid.rows, "filas")
```

> Algunos formatos no se pueden abrir así porque no declaran extensión. Es el caso del
> [MDT nativo de MDTopX](mdtopx-io-malla.md#mdt-nativo-de-mdtopx): léelos con su
> módulo.

## Trocear nubes de puntos

`divide` trocea un archivo de nube de puntos en varios archivos **sin cargarlo entero en memoria**,
leyéndolo y escribiéndolo por partes. `params` es un `DivideParams`; su `mode` (`DivideMode`) elige el
criterio:

| Modo | Criterio |
|---|---|
| `Sequential` | Por número de puntos (`max_points_per_tile`). |
| `Grid` | Por hojas de una rejilla (`origin_x`, `origin_y`, `sheet_width`, `sheet_height`). |
| `Altitude` | Por rangos de cota (`z_min`, `vertical_step`). |
| `GpsInterval` | Por intervalos de tiempo GPS (`gps_start`, `gps_interval`). |
| `Surfaces` | Por superficies (`surfaces`, lista de `DivideSurface`). |
| `Pk` | Por puntos kilométricos a lo largo de un eje (`axis`, `pk_step`, `pk_initial`). |

`tile_name` es una función que recibe un `TileInfo` (`index` y, en los modos `Surfaces` y `Pk`,
`pk_start` y `pk_end`) y devuelve la ruta del trozo. La extensión de esa ruta decide el formato de
salida, que puede ser distinto del de entrada.

> Tanto el archivo de entrada como los trozos tienen que estar en un formato que se pueda leer y
> escribir por partes: **LAS, LAZ o E57**. Con cualquier otro formato, `divide` devuelve un resultado
> con `status` igual a `InvalidData`.

```python
import mdtopx
from mdtopx.io import divide

params = mdtopx.DivideParams()
params.mode = mdtopx.DivideMode.Grid
params.origin_x, params.origin_y = 440000, 4470000
params.sheet_width = params.sheet_height = 500

resultado = divide(r"C:\datos\vuelo.laz", params,
                   lambda info: rf"C:\datos\hojas\hoja_{info.index:04d}.laz")
print(resultado.tiles, "hojas,", resultado.points, "puntos")
```
