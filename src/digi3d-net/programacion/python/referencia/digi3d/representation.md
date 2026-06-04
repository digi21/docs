# Representation

Módulo: `digi3d`

Representa la **representación gráfica** de una geometría: estilo, colores, grosores y
relleno, tanto en la ventana de dibujo como en la fotogramétrica.

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `style` | `str` | Nombre del estilo. |
| `color` | `str` | Color en la ventana de dibujo. |
| `color_photogrammetric` | `str` | Color en la ventana fotogramétrica. |
| `weight` | `int` | Grosor en la ventana de dibujo. |
| `weight_photogrammetric` | `int` | Grosor en la ventana fotogramétrica. |
| `fill_type` | [FillType](enumerations.md#filltype) | Tipo de relleno. |
| `fill_color` | `str` | Color de relleno en la ventana de dibujo. |
| `fill_bitmap` | `str` | Bitmap de relleno en la ventana de dibujo. |
| `scale_x_fill_bitmap` | `float` | Escala en X del bitmap de relleno. |
| `scale_y_fill_bitmap` | `float` | Escala en Y del bitmap de relleno. |

## Véase también

- [FillType](enumerations.md#filltype)
