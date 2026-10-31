# Python
<!-- id: python-4 -->
<!-- origen: 0db2d7c0ae5ced3d92c3c0879fdf4e057a09da41 -->

The **`mdtopx`** Python package gives **ordinary** Python programs outside MDTopX access to the same engine MDTopX uses:

- **Read and write files** containing point clouds, drawings, elevation grids (DEM), meshes, images and BIM models with the same import and export plugins loaded by MDTopX.
- **Process geometry**: triangulate, tetrahedralize, generate slope or shading maps, filter and split clouds, calculate volumes, and more.

> Python version: **3.11 (x64)**. The entire API is **in English**: classes use `PascalCase`; functions, properties and arguments use `snake_case`. Coordinates are always **ground coordinates** stored as `double`, for example UTM in meters.

> The Python pane **inside** MDTopX has its own module, also named `mdtopx`. This package is for external Python programs; do not import it from that pane.

## Packages

| Package | Contents |
|---|---|
| [`mdtopx`](mdtopx.md) | Engine: scene (`Scene`) and its entities, [triangulation and volumes](mdtopx-triangulacion.md), [digital elevation models](mdtopx-mde.md), [point clouds](mdtopx-nubes.md) and [stockpile volumes](mdtopx-acopios.md). |
| [`mdtopx.io`](mdtopx-io.md) | Plugin loading, common read/write interface, cloud splitting. |
| [`mdtopx.io.pointcloud`](mdtopx-io-pointcloud.md) | Point clouds: LAS/LAZ, E57, PTS, PTX, PCD, XYZ, PCAP and trajectories. |
| [`mdtopx.io.vector`](mdtopx-io-vector.md) | Drawing: BIN, BIND, ASCII DIGI, DGN, DWG, DXF, Shapefile, GeoPackage, KML, GeoMedia. |
| [`mdtopx.io.raster`](mdtopx-io-raster.md) | Elevation grids (DEM): GeoTIFF, ESRI ASCII Grid, GTOPO30, MTN25, SGE, Socet Set, ArcInfo, INGR. |
| [`mdtopx.io.malla`](mdtopx-io-malla.md) | Triangulated meshes: STL and **native MDTopX MDT** (`.mdt`). |
| [`mdtopx.io.image`](mdtopx-io-image.md) | Color images: BMP, TIFF, JPEG, ECW/JPEG2000. |
| [`mdtopx.io.model`](mdtopx-io-model.md) | BIM models: IFC 4.3. |

## Installation

The package is an `mdtopx` folder containing the compiled engine (`_core`) and plugin DLLs in `mdtopx/io/plugins`. Add the folder **containing** `mdtopx` to Python's search path through the `PYTHONPATH` environment variable or from your program:

```python
import sys
sys.path.insert(0, r"C:\ruta\a\la\carpeta\que\contiene\mdtopx")

import mdtopx
```

Plugins are searched for in `mdtopx/io/plugins`. Specify another folder with the `MDTOPX_PLUGINS` environment variable.

## First program

Reads an MDTopX digital model and displays its size:

```python
from mdtopx.io.malla import mdt

escena = mdt.read(r"C:\datos\Terreno.mdt")
terreno = escena.meshes[0]
print(len(terreno.mesh.vertices), "puntos,", len(terreno.mesh.triangles), "triángulos")
```

All formats follow the same pattern: read a file into a [`Scene`](mdtopx.md#the-scene), a collection of points, polylines, texts, clouds, meshes, grids and images; work with it; then write it in another format if needed:

```python
from mdtopx.io.pointcloud import las, xyz

escena = las.read(r"C:\datos\vuelo.laz")
xyz.write(r"C:\datos\vuelo.xyz", escena, write_intensity=True)
```
