# Package `mdtopx.io`
<!-- id: mdtopx-io -->
<!-- origen: 67e7b55141b1a4f9ba31ddf5bb690856788c57fa -->

The `mdtopx.io` package provides access to MDTopX's **file formats**. Each format is a **plugin**, a DLL, with its own Python module in a subpackage according to data type:

| Subpackage | Data type |
|---|---|
| [`mdtopx.io.pointcloud`](mdtopx-io-pointcloud.md) | Point clouds |
| [`mdtopx.io.vector`](mdtopx-io-vector.md) | Drawing |
| [`mdtopx.io.raster`](mdtopx-io-raster.md) | Elevation grids (DEM) |
| [`mdtopx.io.malla`](mdtopx-io-malla.md) | Triangulated meshes |
| [`mdtopx.io.image`](mdtopx-io-image.md) | Color images |
| [`mdtopx.io.model`](mdtopx-io-model.md) | BIM models |

These are the same plugins loaded by MDTopX, so files are read identically from Python and the program.

## Common format interface

All format modules share this interface:

| Function | Action |
|---|---|
| `info()` | Returns a `FormatInfo`: `name`, `extensions`, `can_read`, `can_write` and `category`. |
| `read(path, *, scene=None, progress=None, …)` | Reads the file into a [`Scene`](mdtopx.md#the-scene). Creates a new scene if `scene` is omitted; otherwise **adds** contents to the existing one. Returns the scene. |
| `write(path, scene, *, progress=None, …)` | Writes the scene to the file. |

Read-only formats have no `write`; write-only formats have no `read`. Some formats accept specific keyword options, such as `decimals`, documented on each subpackage's page.

`read` and `write` raise `IOError` on failure and `FileNotFoundError` if the format plugin is missing.

```python
from mdtopx.io.pointcloud import las
from mdtopx.io.vector import dxf

# Read two files into the same scene
escena = las.read(r"C:\datos\nube.laz")
dxf.read(r"C:\datos\ejes.dxf", scene=escena)

print(len(escena.clouds), "nubes y", len(escena.polylines), "polilíneas")
```

## Package functions

| Function | Action |
|---|---|
| `load_format(name)` | Loads plugin `plugin_<name>` and returns its `Format` (`info`, `read`, `write`). Each plugin loads once per process. Used internally by format modules. |
| `plugin_dir()` | Plugin search folder: `MDTOPX_PLUGINS` environment variable, or `mdtopx/io/plugins` if unset. |
| `host(folder=None)` | Returns an `IoHost` with all plugins in the folder loaded. |
| `default_host()` | Shared `IoHost` with all package plugins, created on first use. |
| `divide(input_path, params, tile_name, *, progress=None)` | Splits a point cloud file, described below. |

### Read a file without knowing its format

An `IoHost` selects the plugin by file extension and, when several formats share an extension, by contents. `read` and `write` return a `Status` instead of raising an exception:

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

> Some formats cannot be opened this way because they declare no extension. For example, read [native MDTopX MDT](mdtopx-io-malla.md#native-mdtopx-mdt) through its module.

## Split point clouds

`divide` splits a point cloud file into several files **without loading the entire cloud into memory**, reading and writing in chunks. `params` is a `DivideParams`; its `mode` (`DivideMode`) selects the criterion:

| Mode | Criterion |
|---|---|
| `Sequential` | Point count (`max_points_per_tile`). |
| `Grid` | Grid sheets (`origin_x`, `origin_y`, `sheet_width`, `sheet_height`). |
| `Altitude` | Elevation ranges (`z_min`, `vertical_step`). |
| `GpsInterval` | GPS time intervals (`gps_start`, `gps_interval`). |
| `Surfaces` | Surfaces (`surfaces`, a list of `DivideSurface`). |
| `Pk` | Chainage along an axis (`axis`, `pk_step`, `pk_initial`). |

`tile_name` receives a `TileInfo` (`index` and, in `Surfaces` and `Pk` modes, `pk_start` and `pk_end`) and returns the tile's path. Its extension determines the output format, which can differ from the input format.

> Both the input file and tiles must use a format supporting chunked reading and writing: **LAS, LAZ or E57**. For other formats, `divide` returns a result with `status` set to `InvalidData`.

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
