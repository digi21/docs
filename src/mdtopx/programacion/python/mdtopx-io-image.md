# Paquete `mdtopx.io.image`

Formatos de **imágenes en color** (ortofotos, mapas). Leen a `scene.images` y escriben las imágenes
de la escena. Siguen la [interfaz común](mdtopx-io.md#interfaz-común-de-los-formatos) (`info`, `read`,
`write`).

| Módulo | Formato | Lee | Escribe |
|---|---|:-:|:-:|
| `bmp` | Mapa de bits de Windows (`.bmp`) | ✔ | ✔ |
| `tiff` | TIFF (`.tif`, `.tiff`) | ✔ | ✔ |
| `jpeg` | JPEG (`.jpg`, `.jpeg`) | ✔ | ✔ |
| `ecw` | ECW y JPEG 2000 (`.ecw`, `.jp2`) | ✔ | — |

Cada imagen es una `ImageEntity` con:

| Propiedad | Contenido |
|---|---|
| `width`, `height` | Tamaño en píxeles. |
| `channels`, `bits_per_channel` | Número de canales (3 = RGB) y bits de cada canal. |
| `data` | Los píxeles, fila a fila. |
| `has_georef` | Si la imagen está georreferenciada. |
| `origin_x`, `origin_y`, `step_x`, `step_y`, `rotation_x`, `rotation_y` | Georreferencia: coordenadas de la esquina, tamaño del píxel y giro. |

- **TIFF**: lee y escribe la georreferencia que va dentro del archivo (etiquetas GeoTIFF de escala y
  punto de enlace). Las rejillas de cotas en GeoTIFF son otro formato:
  [`mdtopx.io.raster.geotiff`](mdtopx-io-raster.md).
- **ECW/JPEG 2000**: solo en Windows.

## Ejemplo

```python
from mdtopx.io.image import tiff, jpeg

escena = tiff.read(r"C:\datos\orto.tif")
imagen = escena.images[0]
print(imagen.width, "x", imagen.height, "píxeles")
if imagen.has_georef:
    print("Esquina:", imagen.origin_x, imagen.origin_y, "| píxel:", imagen.step_x)

jpeg.write(r"C:\datos\orto.jpg", escena)
```
