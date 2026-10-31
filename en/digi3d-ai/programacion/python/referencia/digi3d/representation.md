# Representation
<!-- id: representation -->
<!-- origen: 9cc62f8d203661b936907d2d5082e9603af648a3 -->

Module: `digi3d`

Represents the **graphical representation** of a geometry: style, colors, line weights, and
fill, in both the drawing window and the photogrammetric window.

## Properties

| Property | Type | Description |
|---|---|---|
| `style` | `str` | Style name. |
| `color` | `str` | Color in the drawing window. |
| `color_photogrammetric` | `str` | Color in the photogrammetric window. |
| `weight` | `int` | Line weight in the drawing window. |
| `weight_photogrammetric` | `int` | Line weight in the photogrammetric window. |
| `fill_type` | [FillType](enumerations.md#filltype) | Fill type. |
| `fill_color` | `str` | Fill color in the drawing window. |
| `fill_bitmap` | `str` | Fill bitmap in the drawing window. |
| `scale_x_fill_bitmap` | `float` | X scale of the fill bitmap. |
| `scale_y_fill_bitmap` | `float` | Y scale of the fill bitmap. |

## See also

- [FillType](enumerations.md#filltype)
