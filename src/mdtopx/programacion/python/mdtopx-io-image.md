# Paquete `mdtopx.io.image`
<!-- id: mdtopx-io-image -->

Formatos de **imágenes en color** (ortofotos, mapas). Leen a `scene.images` y escriben las imágenes
de la escena. Siguen la [interfaz común](mdtopx-io.md#interfaz-común-de-los-formatos) (`info`, `read`,
`write`).

| Módulo | Formato | Lee | Escribe |
|---|---|:-:|:-:|
| `bmp` | Mapa de bits de Windows (`.bmp`) | ✔ | ✔ |
| `tiff` | TIFF (`.tif`, `.tiff`) | ✔ | ✔ |
| `jpeg` | JPEG (`.jpg`, `.jpeg`) | ✔ | ✔ |
| `png` | PNG (`.png`), sin pérdida | ✔ | ✔ |
| `ecw` | ECW y JPEG 2000 (`.ecw`, `.jp2`) | ✔ | — |

Cada imagen es una `ImageEntity` con:

| Propiedad | Contenido |
|---|---|
| `width`, `height` | Tamaño en píxeles. |
| `channels`, `bits_per_channel` | Número de canales (3 = RGB, 4 = RGBA) y bits de cada canal. |
| `data` | Los píxeles, fila a fila. |
| `has_alpha` | Con 4 canales, si el cuarto es transparencia (0 = transparente, sin premultiplicar). Sin ella, el cuarto canal no se escribe. |
| `has_georef` | Si la imagen está georreferenciada. |
| `origin_x`, `origin_y`, `step_x`, `step_y`, `rotation_x`, `rotation_y` | Georreferencia: coordenadas de la esquina, tamaño del píxel y giro. |
| `has_plane`, `origin3`, `axis_u`, `axis_v` | Imagen sobre un plano cualquiera (por ejemplo, una ortofoto de fachada): la esquina superior izquierda del píxel (columna, fila) está en `origin3 + columna · axis_u + fila · axis_v`, en 3D. |

- **TIFF**: lee y escribe la georreferencia que va dentro del archivo (etiquetas GeoTIFF de escala y
  punto de enlace; con `has_plane`, la matriz de transformación del modelo con la coordenada Z) y la
  transparencia (`has_alpha`). Las rejillas de cotas en GeoTIFF son otro formato:
  [`mdtopx.io.raster.geotiff`](mdtopx-io-raster.md).
- **PNG**: lee y escribe RGB, RGBA (con `has_alpha`) y escala de grises (se lee como RGB). La
  georreferencia no va en el archivo.
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
