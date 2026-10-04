# Paquete `mdtopx.io.raster`
<!-- id: mdtopx-io-raster -->

Formatos de **rejillas de cotas** (modelos digitales de elevaciones en malla regular). Leen a
`scene.grids` (la rejilla está en `scene.grids[0].grid`, un [`Grid`](mdtopx.md#tipos-geométricos)) y
escriben la **primera** rejilla de la escena. Todos siguen la
[interfaz común](mdtopx-io.md#interfaz-común-de-los-formatos) (`info`, `read`, `write`).

| Módulo | Formato | Lee | Escribe | Opciones |
|---|---|:-:|:-:|---|
| `geotiff` | GeoTIFF de cotas (`.tif`) | ✔ | ✔ | — |
| `grdasc` | ESRI ASCII Grid (`.grdasc`) | ✔ | ✔ | `write`: `decimals` (3) |
| `gtopo30` | USGS GTOPO30 (`.dem` + `.hdr`) | ✔ | ✔ | `read`: `razon` (1); `write`: `little_endian` (False) |
| `mtn25` | IGN MDT25 (`.mtn25`) | ✔ | ✔ | — |
| `sge` | Servicio Geográfico del Ejército | ✔ | ✔ | `write`: `decimals` (3) |
| `socetset` | LH Socet Set | ✔ | ✔ | `write`: `decimals` (3) |
| `arcinfo` | ArcInfo Grid / Lattice (`.grd`) | ✔ | ✔ | — |
| `ingr` | Intergraph INGR / MGE Terrain (`.grd`) | ✔ | — | — |

Detalles por formato:

- **GeoTIFF**: rejilla de una sola banda en `float32`. Las imágenes TIFF en color son otro formato:
  [`mdtopx.io.image.tiff`](mdtopx-io-image.md).
- **GTOPO30**: cotas enteras en 16 bits, con un archivo de cabecera `.hdr` al lado. Al leer, `razon`
  toma una de cada N filas y columnas; al escribir, las cotas se redondean a metros y
  `little_endian=False` escribe en el orden de bytes original del USGS.
- **MTN25**: malla de 25 m del IGN. Las cotas -999 y 0 se leen como huecos.
- **ArcInfo e INGR** comparten la extensión `.grd`; cada módulo reconoce el suyo por el contenido.

## Ejemplo

Leer un MDE, consultar una cota y guardarlo en otro formato:

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
