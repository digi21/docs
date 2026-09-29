# Modelos digitales de elevaciones

Funciones del paquete [`mdtopx`](mdtopx.md) que trabajan sobre una rejilla regular de cotas (MDE):
sombreado, mapas de pendientes, orientaciones y tintas hipsométricas, y vectores de máxima pendiente.

## `Grid`

Rejilla regular de cotas. Se obtiene al leer un formato de [`mdtopx.io.raster`](mdtopx-io-raster.md)
(`escena.grids[0].grid`) o se crea con `Grid(filas, columnas)`.

| Propiedad | Contenido |
|---|---|
| `rows`, `cols` | Número de filas y de columnas. |
| `origin_x`, `origin_y` | Coordenadas del nodo de la esquina **inferior izquierda** (suroeste). |
| `step_x`, `step_y` | Separación entre nodos en X y en Y. |
| `data` | Las cotas (`float`), fila a fila: la cota de la fila `f` y la columna `c` está en `data[f * cols + c]`. |
| `no_data` | Umbral de validez: una cota es válida si es **mayor** que `no_data`. |

`at(fila, col)` devuelve la cota de un nodo y `set(fila, col, z)` la cambia. La fila 0 es la del sur y
la columna 0 la del oeste: el nodo `(f, c)` está en `(origin_x + c * step_x, origin_y + f * step_y)`.

## Salida raster

Los análisis dibujan en un `RasterImage(ancho, alto)`, una imagen RGB en memoria. Cada función recibe
también las coordenadas terreno de la esquina inferior izquierda de la imagen (`raster_min_x`,
`raster_min_y`) y el tamaño del píxel en metros (el `size` de sus parámetros). Así, la imagen puede
cubrir toda la rejilla o solo una parte, con cualquier resolución.

`raster.rgb` devuelve los píxeles como `bytes` (`ancho * alto * 3`, fila a fila, en orden R, G, B). La
**fila 0 es la del sur**: para guardarla como imagen normal, con el norte arriba, hay que invertir el
orden de las filas.

Todas las funciones de análisis aceptan además:

| Argumento | Contenido |
|---|---|
| `progress` | Función de progreso (ver [Estado y progreso](mdtopx.md#estado-y-progreso)). |
| `clip` | Función opcional `clip(x, y)` que recibe las coordenadas terreno de cada píxel y devuelve `True` si se pinta o `False` si se deja sin pintar (por ejemplo, para recortar con un polígono). |

### Luz: `LightParams`

| Propiedad | Por defecto | Significado |
|---|---|---|
| `angle` | 45 | Altura de la luz oblicua, en grados **centesimales**. |
| `azimuth` | 350 | Acimut de la luz oblicua, en grados centesimales. |
| `intensity` | 1 | Intensidad. |
| `exaggeration` | 1 | Factor que multiplica las cotas (exageración del relieve). |
| `type` | 0 | 0: de blanco al color; 1: de blanco al color y a negro. |

### Colores: `Color3`, `ColorRamp`

`Color3(r, g, b)` es un color RGB (0 a 255). Una `ColorRamp` asigna colores por intervalos: cada
`add(z, color)` indica que a partir del valor `z` se usa `color`. Los intervalos deben añadirse en orden
creciente de `z`.

## `hillshade`

```python
hillshade(grid, params, raster, raster_min_x=0.0, raster_min_y=0.0, progress=None, clip=None) -> Status
```

Sombreado del relieve. `HillshadeParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `type` | 0 | 0: luz cenital; 1: luz oblicua; 2: ambas. |
| `zenith_color`, `oblique_color` | Blanco | Color de la luz cenital y de la oblicua (`Color3`). |
| `light` | `LightParams()` | Luz oblicua. |
| `size` | 1 | Tamaño del píxel, en metros. |

## `slopes`, `aspects` y `hypsometric`

```python
slopes(grid, params, raster, raster_min_x=0.0, raster_min_y=0.0, progress=None, clip=None) -> Status
aspects(grid, params, raster, ...) -> Status
hypsometric(grid, params, raster, ...) -> Status
```

Colorean cada píxel según una rampa de colores:

| Función | Valor que se colorea |
|---|---|
| `slopes` | Pendiente, en grados sexagesimales. |
| `aspects` | Orientación de la ladera (acimut de la normal del terreno), en grados centesimales. |
| `hypsometric` | Cota. |

`RampParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `ramp` | — | La `ColorRamp`. |
| `size` | 1 | Tamaño del píxel, en metros. |
| `gradient` | False | Degrada el color entre intervalos en lugar de usar colores planos. |
| `with_hillshade` | False | Superpone el sombreado del relieve. |
| `light` | `LightParams()` | Luz del sombreado superpuesto. |

## `slope_vectors`

```python
slope_vectors(grid, params, sink, raster_min_x=0.0, raster_min_y=0.0, progress=None, clip=None) -> SlopeVectorResult
```

Dibuja, en un `VectorCollector`, un vector de máxima pendiente en cada punto de muestreo: una flecha en
la dirección de máxima pendiente y un texto con la pendiente en %. El `VectorCollector` recoge las
líneas en `lines` (listas de `Point3`) y los textos en `texts` (`pos`, `text`, `size`, `rotation`).

`SlopeVectorParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `size` | 1 | Separación entre puntos de muestreo, en metros. |
| `vector_size` | 1 | Longitud de las flechas. |
| `text_size` | 1 | Tamaño de los textos. |
| `decimals` | 2 | Decimales de la pendiente en los textos. |

Devuelve un `SlopeVectorResult` con `status`, `slope_min`, `slope_max` y `slope_mean` (en %) y
`measurements` (número de vectores).

## Ejemplo

Sombreado de un MDE, guardado como imagen con el paquete [Pillow](https://pypi.org/project/pillow/):

```python
import mdtopx
from mdtopx.io.raster import grdasc
from PIL import Image

g = grdasc.read(r"C:\datos\mde.grdasc").grids[0].grid

params = mdtopx.HillshadeParams()
params.type = 1          # luz oblicua
params.size = g.step_x   # un píxel por celda

ancho, alto = g.cols, g.rows
raster = mdtopx.RasterImage(ancho, alto)
if mdtopx.hillshade(g, params, raster, g.origin_x, g.origin_y) == mdtopx.Status.Ok:
    imagen = Image.frombytes("RGB", (ancho, alto), raster.rgb)
    imagen.transpose(Image.Transpose.FLIP_TOP_BOTTOM).save(r"C:\datos\sombreado.png")  # norte arriba
```

Mapa de pendientes con tres colores:

```python
rampa = mdtopx.ColorRamp()
rampa.add(0, mdtopx.Color3(0, 160, 0))     # de 0° a 10°: verde
rampa.add(10, mdtopx.Color3(255, 200, 0))  # de 10° a 25°: amarillo
rampa.add(25, mdtopx.Color3(200, 0, 0))    # más de 25°: rojo

params = mdtopx.RampParams()
params.ramp = rampa
params.size = g.step_x
params.with_hillshade = True

raster = mdtopx.RasterImage(g.cols, g.rows)
mdtopx.slopes(g, params, raster, g.origin_x, g.origin_y)
```
