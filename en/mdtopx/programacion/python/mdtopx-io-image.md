# Package `mdtopx.io.image`
<!-- id: mdtopx-io-image -->
<!-- origen: 8e6fe14e78415019deba0a5290b6289496354686 -->

**Color image** formats, including orthophotos and maps. Read into `scene.images` and write scene images. Follow the [common interface](mdtopx-io.md#common-format-interface): `info`, `read`, `write`.

| Module | Format | Reads | Writes |
|---|---|:-:|:-:|
| `bmp` | Windows bitmap (`.bmp`) | ✔ | ✔ |
| `tiff` | TIFF (`.tif`, `.tiff`) | ✔ | ✔ |
| `jpeg` | JPEG (`.jpg`, `.jpeg`) | ✔ | ✔ |
| `png` | Lossless PNG (`.png`) | ✔ | ✔ |
| `ecw` | ECW and JPEG 2000 (`.ecw`, `.jp2`) | ✔ | — |

Each image is an `ImageEntity` with:

| Property | Contents |
|---|---|
| `width`, `height` | Size in pixels. |
| `channels`, `bits_per_channel` | Channel count (3 = RGB, 4 = RGBA) and bits per channel. |
| `data` | Pixels, row by row. |
| `has_alpha` | With four channels, whether the fourth is transparency (0 = transparent, not premultiplied). Otherwise the fourth channel is not written. |
| `has_georef` | Whether the image is georeferenced. |
| `origin_x`, `origin_y`, `step_x`, `step_y`, `rotation_x`, `rotation_y` | Georeferencing: corner coordinates, pixel size and rotation. |
| `has_plane`, `origin3`, `axis_u`, `axis_v` | Image on any plane, such as a facade orthophoto: the upper-left corner of pixel (column, row) is at `origin3 + columna · axis_u + fila · axis_v` in 3D. |

- **TIFF**: reads and writes internal georeferencing, GeoTIFF scale and tiepoint tags or, with `has_plane`, the model transformation matrix including Z, and transparency (`has_alpha`). GeoTIFF elevation grids use another format: [`mdtopx.io.raster.geotiff`](mdtopx-io-raster.md).
- **PNG**: reads and writes RGB, RGBA with `has_alpha`, and grayscale, read as RGB. Georeferencing is not stored in the file.
- **ECW/JPEG 2000**: Windows only.

## Example

```python
from mdtopx.io.image import tiff, jpeg

escena = tiff.read(r"C:\datos\orto.tif")
imagen = escena.images[0]
print(imagen.width, "x", imagen.height, "píxeles")
if imagen.has_georef:
    print("Esquina:", imagen.origin_x, imagen.origin_y, "| píxel:", imagen.step_x)

jpeg.write(r"C:\datos\orto.jpg", escena)
```
