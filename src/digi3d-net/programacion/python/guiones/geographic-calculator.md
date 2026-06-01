# GeographicCalculator

Módulo: `digi3d`

Realiza cálculos geográficos (áreas, perímetros, distancias y azimuts) en el sistema de
coordenadas de la ventana de dibujo. Se obtiene de
[`DrawingView.geographic_calculator`](drawing-view.md#propiedades-de-información).

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `calculate_area(coordinates)` | `float` | Área del polígono formado por las coordenadas. |
| `perimeter_2d(coordinates)` | `float` | Perímetro 2D del conjunto de coordenadas. |
| `perimeter_3d(coordinates)` | `float` | Perímetro 3D del conjunto de coordenadas. |
| `calculate_distance_azimuth(point_a, point_b)` | `tuple` | `(azimut_ab, azimut_ba, distancia_2d, distancia_3d)`. |
| `calculate_distance_2d(point_a, point_b)` | `float` | Distancia 2D entre dos puntos. |
| `calculate_distance_3d(point_a, point_b)` | `float` | Distancia 3D entre dos puntos. |
| `calculate_trigonometric_angle(point_a, point_b)` | `float` | Ángulo trigonométrico que forman dos puntos. |

Las coordenadas se pasan como listas de tuplas `(x, y, z)`; los puntos, como tuplas
`(x, y, z)`.

## Ejemplo

```python
import digi3d

calc = digi3d.current_view().geographic_calculator

area = calc.calculate_area([(0, 0, 0), (100, 0, 0), (100, 100, 0), (0, 100, 0)])
az_ab, az_ba, d2d, d3d = calc.calculate_distance_azimuth((0, 0, 0), (100, 50, 10))
```

## Véase también

- [DrawingView](drawing-view.md)
