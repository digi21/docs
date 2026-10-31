# Package `mdtopx.io.raster`
<!-- id: mdtopx-io-raster -->
<!-- origen: 973059fbb484844c6715b1b6371dbb089dba0c7c -->

**Elevation grid** formats, digital elevation models on a regular grid. Read into `scene.grids`, with a [`Grid`](mdtopx.md#geometric-types) in `scene.grids[0].grid`, and write the scene's **first** grid. All follow the [common interface](mdtopx-io.md#common-format-interface): `info`, `read`, `write`.

| Module | Format | Reads | Writes | Options |
|---|---|:-:|:-:|---|
| `geotiff` | Elevation GeoTIFF (`.tif`) | ✔ | ✔ | — |
| `grdasc` | ESRI ASCII Grid (`.grdasc`) | ✔ | ✔ | `write`: `decimals` (3) |
| `gtopo30` | USGS GTOPO30 (`.dem` + `.hdr`) | ✔ | ✔ | `read`: `razon` (1); `write`: `little_endian` (False) |
| `mtn25` | IGN MDT25 (`.mtn25`) | ✔ | ✔ | — |
| `sge` | Servicio Geográfico del Ejército | ✔ | ✔ | `write`: `decimals` (3) |
| `socetset` | LH Socet Set | ✔ | ✔ | `write`: `decimals` (3) |
| `arcinfo` | ArcInfo Grid / Lattice (`.grd`) | ✔ | ✔ | — |
| `ingr` | Intergraph INGR / MGE Terrain (`.grd`) | ✔ | — | — |

Format details:

- **GeoTIFF**: single-band `float32` grid. Color TIFF images use another format: [`mdtopx.io.image.tiff`](mdtopx-io-image.md).
- **GTOPO30**: 16-bit integer elevations with a separate `.hdr` header file. When reading, `razon` selects one in every N rows and columns. Writing rounds elevations to meters; `little_endian=False` uses the original USGS byte order.
- **MTN25**: IGN 25 m grid. Elevations -999 and 0 are read as gaps.
- **ArcInfo and INGR** share `.grd`; each module identifies its format by contents.

## Example

Read a DEM, query an elevation and save it in another format:

```python
from mdtopx.io.raster import grdasc, geotiff

escena = grdasc.read(r"C:\datos\mde.grdasc")
g = escena.grids[0].grid
print(f"{g.rows} x {g.cols} celdas de {g.step_x} m, origen ({g.origin_x}, {g.origin_y})")

fila, col = g.rows // 2, g.cols // 2
z = g.at(fila, col)
if z > g.no_data:
    x = g.origin_x + col * g.step_x
    y = g.origin_y + fila * g.step_y
    print(f"Cota en ({x}, {y}): {z:.2f}")

geotiff.write(r"C:\datos\mde.tif", escena)
```
