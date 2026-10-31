# GeographicCalculator
<!-- id: geographic-calculator -->
<!-- origen: e5091aca5f5b9718f520316d05e6e0c5a6fc618a -->

Module: `digi3d`

Performs geographic calculations (areas, perimeters, distances, and azimuths) in the
drawing window coordinate system. Obtain it from
[`DrawingView.geographic_calculator`](drawing-view.md#information-properties).

## Methods

| Method | Returns | Description |
|---|---|---|
| `calculate_area(coordinates)` | `float` | Area of the polygon formed by the coordinates. |
| `perimeter_2d(coordinates)` | `float` | 2D perimeter of the coordinate set. |
| `perimeter_3d(coordinates)` | `float` | 3D perimeter of the coordinate set. |
| `calculate_distance_azimuth(point_a, point_b)` | `tuple` | `(azimut_ab, azimut_ba, distancia_2d, distancia_3d)`. |
| `calculate_distance_2d(point_a, point_b)` | `float` | 2D distance between two points. |
| `calculate_distance_3d(point_a, point_b)` | `float` | 3D distance between two points. |
| `calculate_trigonometric_angle(point_a, point_b)` | `float` | Trigonometric angle of the line from `point_a` to `point_b`, in sexagesimal degrees, counterclockwise from the X axis. This is the unit of `rotation` in [Point](../digi21.base/point.md) and [Text](../digi21.base/text.md). |

Pass coordinates as lists of `(x, y, z)` tuples, and points as
`(x, y, z)` tuples.

If the drawing window horizontal coordinate reference system is geographic, x is longitude and y is latitude, in the angular unit of the system (for example, grads in the Nouvelle triangulation de la France (NTF) system, with the Paris meridian, code 4807 in the European Petroleum Survey Group, EPSG, registry). 2D distances, 2D perimeters, and azimuths are calculated along geodesics on the system ellipsoid. The 3D distance of each segment is the square root of the sum of the squared geodesic distance and the squared difference in z between its endpoints; the 3D perimeter sums the 3D distances of the segments. Area is calculated by projecting the vertices using the Lambert azimuthal equal-area projection centered on the first vertex.

## Example

```python
import digi3d

calc = digi3d.current_view().geographic_calculator

area = calc.calculate_area([(0, 0, 0), (100, 0, 0), (100, 100, 0), (0, 100, 0)])
az_ab, az_ba, d2d, d3d = calc.calculate_distance_azimuth((0, 0, 0), (100, 50, 10))
```

## See also

- [DrawingView](drawing-view.md)
