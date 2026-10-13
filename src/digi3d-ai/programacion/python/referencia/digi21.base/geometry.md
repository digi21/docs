# Geometry
<!-- id: geometry -->

Módulo: [digi21.base](README.md)

Clase base de todas las geometrías. Define las propiedades, los métodos y el acceso a
coordenadas comunes a [Point](point.md), [Text](text.md), [Line](line.md),
[Polygon](polygon.md) y [Complex](complex.md). No se construye directamente.

## Coordenadas

Toda geometría se comporta como una secuencia de vértices `(x, y, z)`:

| Operación | Descripción |
|---|---|
| `len(geometry)` | Número de vértices. |
| `geometry[i]` | Vértice `i` como tupla `(x, y, z)`. |
| `for v in geometry:` | Recorre los vértices como tuplas `(x, y, z)`. |

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `codes` | `list[FeatureCode]` | L/E | Lista de [códigos](featurecode.md) de la geometría. |
| `attributes` | `dict` | L | Diccionario `{str: valor}` con los atributos de base de datos. |
| `color` | `int` | L/E | Color. |
| `weight` | `int` | L/E | Grosor. |
| `fill_color` | `int` | L/E | Color de relleno. |
| `virtual_` | `bool` | L/E | Indica si la geometría es virtual. |
| `deleted` | `bool` | L | Verdadero si está marcada como eliminada. |
| `min` | `tuple` | L | Coordenadas mínimas `(x, y, z)` de la caja envolvente. |
| `max` | `tuple` | L | Coordenadas máximas `(x, y, z)` de la caja envolvente. |
| `first_vertex` | `tuple` | L | Primer vértice `(x, y, z)`. |
| `last_vertex` | `tuple` | L | Último vértice `(x, y, z)`. |
| `code_count` | `int` | L | Número de códigos. |
| `owner` | `tuple` | L |`(geometría_propietaria, índice)` si pertenece a un contenedor<br>`(None, 0)` si no.|

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `clone()` | `Geometry` | Devuelve un clon de la geometría. |
| `compute_bounds()` | — | Recalcula las máximas y mínimas a partir de las coordenadas. |
| `transform(function)` | — | Aplica una función `(x, y, z) -> (x, y, z)` a todas las coordenadas. |
| `displace(delta)` | — | Desplaza la geometría el `(dx, dy, dz)` indicado. |
| `maxmin_overlaps(other)` | `bool` | Verdadero si las cajas envolventes 3D solapan. |
| `maxmin_overlaps_2d(other)` | `bool` | Verdadero si las cajas envolventes 2D (en planta) solapan. |
| `identical_xy(other)` | `bool` | Verdadero si las dos geometrías son idénticas en planta (XY). |
| `nearest_vertex_segment(coordinates)` | `tuple` | Vértice y segmento más cercanos: `(n_vertice, dist_vertice, (x,y,z), n_segmento, dist_segmento, (x,y,z))`. |
| `completely_inside(window)` | `bool` | Verdadero si está completamente dentro de la ventana (una [Line](line.md)). |
| `completely_outside(window)` | `bool` | Verdadero si está completamente fuera de la ventana (una [Line](line.md)). |
| `overlaps_window(window, inside=True)` | `bool` | Verdadero si solapa con la ventana (una [Line](line.md)). |
| `has_code(name)` | `bool` | Verdadero si la geometría tiene el código indicado. |
| `add_code(code)` | `bool` |Añade un código (`FeatureCode` o `str`)<br>devuelve `True` si se añadió.|
| `remove_code(code)` | — | Elimina el código indicado (`FeatureCode` o `str`). |

## Relaciones espaciales

Métodos para consultar la relación espacial con otra geometría (estilo Shapely). Se
resuelven según el **tipo concreto** de las dos geometrías. En `within`, `adjacent`,
`terminates_within` y `completely_within` el argumento es el **área** y admite un
[Polygon](polygon.md) o una [Line](line.md) cerrada.

> Estas relaciones se basan en los **vértices y nodos compartidos**, no en intersecciones
> calculadas. Las comparaciones se hacen en planta, sin tener en cuenta la coordenada Z.
> Si la combinación de tipos no soporta la relación, se lanza `TypeError`.

| Método | `self` | Argumento | Verdadero si… |
|---|---|---|---|
| `disjoint(other)` | Point/Line/Polygon | Point/Line/Polygon | Las dos geometrías son disjuntas. |
| `coincident(other)` | Point | Point/Line/Polygon | El punto coincide con la otra geometría. |
| `coincident_and_terminates(line)` | Point | Line | El punto coincide con un extremo de la línea. |
| `within(area)` | Point/Line/Polygon | área | La geometría está dentro del área. |
| `completely_within(area)` | Polygon | área | El área está completamente incluida en la otra área. |
| `adjacent(area)` | Line/Polygon | área | La geometría es adyacente al área. |
| `terminates_within(area)` | Line | área | La línea termina dentro del área. |
| `crosses(other)` | Line | Line/Polygon | La línea cruza la otra línea o el área. |
| `cross_vertices(line, stop_at_first=False)` | Line | Line | Devuelve la **lista de índices de vértice** en los que se cruzan. |
| `overlaps(other)` | Line/Polygon | Line/Polygon | Las dos geometrías se solapan. |
| `equals(other)` | Line/Polygon | Line/Polygon | Las dos geometrías son iguales. |
| `touches(other)` | Line/Polygon | Line/Polygon | Comparten algún punto (se tocan). |
| `endpoint_touches(other)` | Line | Line/Polygon | Un extremo de la línea toca un extremo de la otra línea/área. |
| `endpoint_touches_interior(line)` | Line | Line | Un extremo de la línea toca la otra línea pero no en sus extremos. |

### Relaciones entre dos áreas

Cuando `self` es un [Polygon](polygon.md) y el argumento es un polígono o una línea
cerrada, las relaciones `equals`, `disjoint`, `touches`, `adjacent`, `completely_within`,
`within` y `overlaps` son excluyentes: para cada par `a`, `b` se cumple exactamente una de
estas.

| Relación | Verdadero |
|---|---|
| Iguales | `a.equals(b)` |
| Disjuntas | `a.disjoint(b)` |
| Se tocan | `a.touches(b)` |
| Adyacentes | `a.adjacent(b)` |
| `a` completamente dentro de `b` | `a.completely_within(b)` |
| `a` dentro de `b` | `a.within(b)` |
| `b` completamente dentro de `a` | `b.completely_within(a)`, si `b` es un polígono |
| `b` dentro de `a` | `b.within(a)`, si `b` es un polígono |
| Se solapan | `a.overlaps(b)` |

Para cada vértice de un área se comprueba si coincide con un vértice de la otra área
(vértice común) o si está dentro o fuera de la otra área. Un vértice dentro de un hueco
cuenta como fuera. Un vértice sobre un lado de la otra área que no coincide con ningún
vértice suyo se ignora. El resultado no depende del vértice inicial ni del sentido de
recorrido de los anillos.

| Relación | Condición |
|---|---|
| Iguales | Los anillos exteriores y los huecos tienen los mismos vértices, con cualquier vértice inicial y sentido. Los vértices repetidos consecutivos no cuentan. También son iguales si hay vértices comunes y ningún vértice de un área está dentro ni fuera de la otra (los vértices que no son comunes están sobre los lados de la otra área). |
| Disjuntas | Ningún vértice de un área está dentro de la otra y no hay vértices comunes. |
| `a` completamente dentro de `b` | Los vértices de `a` están dentro de `b`, ninguno es común y ningún vértice de `b`, huecos incluidos, está dentro de `a`. |
| `a` dentro de `b` | Ningún vértice de `a` está fuera de `b`, al menos uno es común y ningún vértice de `b`, huecos incluidos, está dentro de `a`. Si ningún vértice de `a` está dentro de `b`, se comprueba si el punto interior de `a` está dentro de `b`. |
| Adyacentes | Ningún vértice de un área está dentro de la otra, hay vértices comunes y al menos un lado común (dos vértices comunes consecutivos en los dos anillos). |
| Se tocan | Ningún vértice de un área está dentro de la otra, hay vértices comunes y ningún lado común. |
| Se solapan | Cualquier otro caso: hay vértices de un área dentro de la otra y ninguna de las dos contiene a la otra. |

Si dos áreas se cruzan sin vértices comunes en el cruce ni vértices dentro de la otra
área, el cruce pasa desapercibido y las áreas se consideran disjuntas. Si un área tiene un
anillo sin cerrar, de área nula o con una espiga (un vértice cuyos dos vecinos coinciden),
estas relaciones lanzan `RuntimeError` con el motivo y las coordenadas.

## Ejemplo

```python
# Desplazar todas las geometrías de un archivo 10 m en X
for geometry in drawing:
    geometry.displace((10.0, 0.0, 0.0))
```

## Véase también

- [Point](point.md), [Text](text.md), [Line](line.md), [Polygon](polygon.md), [Complex](complex.md)
- [Curso: relaciones entre geometrías](../../aplicaciones-de-consola/ejemplos/relaciones-entre-geometrias.md)
