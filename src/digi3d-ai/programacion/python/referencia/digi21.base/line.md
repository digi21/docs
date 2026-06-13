# Line

Módulo: [digi21.base](README.md)

Una polilínea, abierta o cerrada. Hereda de [Geometry](geometry.md).

```python
Line(codes, coordinates=[])
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `codes` | iterable | Códigos (`FeatureCode` o `str`). |
| `coordinates` | `list[tuple]` | Lista de vértices `(x, y, z)`. |

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `closed` | `bool` | Indica si la línea está cerrada. |
| `closed_2d` | `bool` | Indica si está cerrada en planta (2D). |
| `area` | `float` | Área de la línea. |
| `perimeter_2d` | `float` | Perímetro en planta (2D). |
| `perimeter_3d` | `float` | Perímetro en el espacio (3D). |
| `calculate_interior_point` | `tuple` | Coordenadas `(x, y, z)` de un punto interior. |
| `length_and_width` | `tuple` | `(largo, ancho)` de la línea. |
| `tangent_first` | `tuple` | Vector tangente en el primer punto. |
| `tangent_last` | `tuple` | Vector tangente en el último punto. |

## Métodos de construcción y edición

| Método | Devuelve | Descripción |
|---|---|---|
| `add_point(coordinates)` | `int` |Añade un vértice al final<br>devuelve el número de vértices resultante.|
| `add_points(coordinates)` | — | Añade varios vértices al final. |
| `close()` | — | Cierra la línea. |
| `reverse()` | — | Invierte el sentido de la línea. |
| `smooth(increment)` | — | Suaviza la línea. |
| `generalize(tolerance, angular_tolerance)` | `bool` |Generaliza la línea<br>devuelve `True` si la modificó.|
| `parallelize(distance)` | — | Desplaza/paraleliza la línea la distancia indicada. |
| `generate_spline()` | — | Genera una spline a partir de los vértices. |
| `remove_duplicate_points(in_2d=False)` | — | Elimina vértices duplicados consecutivos. |
| `remove_loops()` | — | Elimina lazos de la línea. |
| `add_arc_3points(origin, middle, end, min_points, max_points)` | `bool` | Añade un arco definido por 3 puntos. |
| `add_circle(a, b, c, max_points)` | — | Añade un círculo que pasa por los 3 puntos dados. |
| `add_circle_xy(center, radius, max_points)` | — | Añade un círculo en el plano XY (centro y radio). |

## Métodos de consulta

| Método | Devuelve | Descripción |
|---|---|---|
| `calculate_position_point(coordinates)` | [PointLineRelativePosition](pointlinerelativeposition.md) | Posición de unas coordenadas (o de un `point`) respecto a la línea. |
| `search_segment(coordinates)` | `tuple` | Segmento más próximo: `(distancia, (x,y,z) del corte, nº de segmento)`. Acepta también un `point`. |
| `search_vertex(coordinates)` | `tuple` | Vértice más próximo: `(distancia, (x,y,z) del corte, nº de vértice)`. Acepta también un `point`. |
| `search_vertex(coordinates, first_vertex, last_vertex=-1)` | `int` |Vértice más próximo entre dos índices<br>devuelve el nº de vértice.|
| `project_origin_or_end(limit, origin, infinite_limit_extremes=True, allow_cut=True, allow_stretch=True)` | `tuple` | Proyecta el origen/final contra un límite: `(¿estirada?, (x,y,z) del corte, nº de segmento)`. |
| `line_cross_line(line)` | `bool` | Verdadero si las dos líneas se cortan. |
| `calculate_cross_coordinates(other)` | `tuple` | `(¿se cortan?, segmento_self, segmento_other, (x,y,z) del corte)`. |
| `direction_vector(index)` | `tuple` | Vector director del segmento que arranca en el vértice indicado. |
| `distance_to_vertex(coordinates, vertex)` | `float` | Distancia de unas coordenadas a un vértice concreto. |
| `has_repeated_points(distance)` | `bool` | Verdadero si hay vértices repetidos dentro de la distancia dada. |
| `bounds_between_vertices(first_vertex, last_vertex)` | `tuple` | Caja envolvente entre dos vértices: `((xmin,ymin,zmin),(xmax,ymax,zmax))`. |

Hereda además las propiedades, los métodos y las relaciones espaciales de
[Geometry](geometry.md).

## Ejemplo

```python
from digi21.base import Line, PointLineRelativePosition

linea = Line(["CARR"])
linea.add_point((0, 0, 0))
linea.add_point((10, 0, 0))
linea.add_point((10, 10, 0))

if linea.calculate_position_point((5, 5, 0)) == PointLineRelativePosition.Inside:
    print("dentro")
```

## Véase también

- [Polygon](polygon.md) — línea cerrada con huecos.
- [PointLineRelativePosition](pointlinerelativeposition.md)
- [Geometry](geometry.md)
