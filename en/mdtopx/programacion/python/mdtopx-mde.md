# Digital elevation models
<!-- id: mdtopx-mde -->
<!-- origen: 9e242255fa74fd59137d8cebfa68eaadca56de3c -->

Functions in [`mdtopx`](mdtopx.md) operating on a regular elevation grid (DEM): shading, slope, aspect and hypsometric tint maps, and steepest-slope vectors.

## `Grid`

Regular elevation grid. Read from an [`mdtopx.io.raster`](mdtopx-io-raster.md) format (`escena.grids[0].grid`) or create with `Grid(filas, columnas)`.

| Property | Contents |
|---|---|
| `rows`, `cols` | Row and column counts. |
| `origin_x`, `origin_y` | Coordinates of the **lower-left**, southwest corner node. |
| `step_x`, `step_y` | Node spacing in X and Y. |
| `data` | Elevations (`float`), row by row: row `f`, column `c` is at `data[f * cols + c]`. |
| `no_data` | Validity threshold: an elevation is valid if **greater** than `no_data`. |

`at(fila, col)` returns a node elevation; `set(fila, col, z)` changes it. Row 0 is south and column 0 west: node `(f, c)` lies at `(origin_x + c * step_x, origin_y + f * step_y)`.

## Raster output

Analyses draw into a `RasterImage(ancho, alto)`, an in-memory RGB image. Each function also receives the image's lower-left ground coordinates, `raster_min_x` and `raster_min_y`, and pixel size in meters, the parameters' `size`. The image can cover all or part of the grid at any resolution.

`raster.rgb` returns pixels as `bytes` (`ancho * alto * 3`, row by row in R, G, B order). **Row 0 is south**: reverse row order to save a normal north-up image.

All analysis functions also accept:

| Argument | Contents |
|---|---|
| `progress` | Progress function; see [Status and progress](mdtopx.md#status-and-progress). |
| `clip` | Optional `clip(x, y)` receiving each pixel's ground coordinates and returning `True` to paint it or `False` to leave it unpainted, for example to clip to a polygon. |

### Light: `LightParams`

| Property | Default | Meaning |
|---|---|---|
| `angle` | 45 | Oblique light elevation, in **grads**. |
| `azimuth` | 350 | Oblique light azimuth, in grads. |
| `intensity` | 1 | Intensity. |
| `exaggeration` | 1 | Elevation multiplier, exaggerating relief. |
| `type` | 0 | 0: white to color; 1: white through color to black. |

### Colors: `Color3`, `ColorRamp`

`Color3(r, g, b)` is an RGB color, 0 to 255. A `ColorRamp` assigns colors by interval: each `add(z, color)` uses `color` starting at `z`. Add intervals in increasing `z` order.

## `hillshade`

```python
hillshade(grid, params, raster, raster_min_x=0.0, raster_min_y=0.0, progress=None, clip=None) -> Status
```

Terrain shading. `HillshadeParams`:

| Property | Default | Meaning |
|---|---|---|
| `type` | 0 | 0: zenithal light; 1: oblique light; 2: both. |
| `zenith_color`, `oblique_color` | White | Zenithal and oblique light colors (`Color3`). |
| `light` | `LightParams()` | Oblique light. |
| `size` | 1 | Pixel size in meters. |

## `slopes`, `aspects` and `hypsometric`

```python
slopes(grid, params, raster, raster_min_x=0.0, raster_min_y=0.0, progress=None, clip=None) -> Status
aspects(grid, params, raster, ...) -> Status
hypsometric(grid, params, raster, ...) -> Status
```

Color each pixel using a color ramp:

| Function | Colored value |
|---|---|
| `slopes` | Slope, in degrees. |
| `aspects` | Hillside aspect, the terrain normal's azimuth, in grads. |
| `hypsometric` | Elevation. |

`RampParams`:

| Property | Default | Meaning |
|---|---|---|
| `ramp` | — | The `ColorRamp`. |
| `size` | 1 | Pixel size in meters. |
| `gradient` | False | Gradates colors between intervals instead of using flat colors. |
| `with_hillshade` | False | Overlays terrain shading. |
| `light` | `LightParams()` | Overlaid shading light. |

## `slope_vectors`

```python
slope_vectors(grid, params, sink, raster_min_x=0.0, raster_min_y=0.0, progress=None, clip=None) -> SlopeVectorResult
```

Draws a steepest-slope vector at each sample point into a `VectorCollector`: an arrow in the steepest-slope direction and text with the slope percentage. The collector stores lines in `lines`, lists of `Point3`, and texts in `texts` (`pos`, `text`, `size`, `rotation`).

`SlopeVectorParams`:

| Property | Default | Meaning |
|---|---|---|
| `size` | 1 | Sample point spacing, in meters. |
| `vector_size` | 1 | Arrow length. |
| `text_size` | 1 | Text size. |
| `decimals` | 2 | Slope decimal places in texts. |

Returns a `SlopeVectorResult` with `status`, `slope_min`, `slope_max`, `slope_mean`, all slopes in %, and `measurements`, the vector count.

## Example

DEM shading saved as an image with [Pillow](https://pypi.org/project/pillow/):

```python
import mdtopx
from mdtopx.io.raster import grdasc
from PIL import Image

g = grdasc.read(r"C:\datos\mde.grdasc").grids[0].grid

params = mdtopx.HillshadeParams()
params.type = 1          # oblique light
params.size = g.step_x   # one pixel per cell

ancho, alto = g.cols, g.rows
raster = mdtopx.RasterImage(ancho, alto)
if mdtopx.hillshade(g, params, raster, g.origin_x, g.origin_y) == mdtopx.Status.Ok:
    imagen = Image.frombytes("RGB", (ancho, alto), raster.rgb)
    imagen.transpose(Image.Transpose.FLIP_TOP_BOTTOM).save(r"C:\datos\sombreado.png")  # north up
```

Three-color slope map:

```python
rampa = mdtopx.ColorRamp()
rampa.add(0, mdtopx.Color3(0, 160, 0))     # 0° to 10°: green
rampa.add(10, mdtopx.Color3(255, 200, 0))  # 10° to 25°: yellow
rampa.add(25, mdtopx.Color3(200, 0, 0))    # above 25°: red

params = mdtopx.RampParams()
params.ramp = rampa
params.size = g.step_x
params.with_hillshade = True

raster = mdtopx.RasterImage(g.cols, g.rows)
mdtopx.slopes(g, params, raster, g.origin_x, g.origin_y)
```
