# Triangulación y volúmenes
<!-- id: mdtopx-triangulacion -->

Funciones del paquete [`mdtopx`](mdtopx.md) para generar mallas a partir de puntos y calcular
volúmenes.

## `triangulate`

```python
triangulate(points, options=Options(), constraints=[], progress=None) -> Result
```

Triangulación de Delaunay 2D (TIN) de una lista de `Point3`. Es la misma triangulación que hace
MDTopX.

| Argumento | Contenido |
|---|---|
| `points` | Lista de `Point3` (o tuplas `(x, y, z)`). |
| `options` | Un `Options` (ver abajo). |
| `constraints` | Lista de `ConstraintEdge(a, b, code)`: lados que la triangulación debe respetar (**líneas de ruptura**). `a` y `b` son índices en `points`; `code` es un entero que se copia a los triángulos. |
| `progress` | Función de progreso (ver [Estado y progreso](mdtopx.md#estado-y-progreso)). |

`Options`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `decimals` | 3 | Precisión con la que se triangula: las coordenadas se redondean a `10**-decimals` (3 = milímetro). |
| `max_edge_length` | 0 | Descarta los triángulos con algún lado mayor que esta longitud (0 = sin límite). |
| `intersection_z` | 0 | Cota del punto que se crea donde se cruzan dos líneas de ruptura: 0 independiente, 1 media, 2 la más alta, 3 la más baja. |

Devuelve un `Result` con `status` y `mesh`. Los primeros vértices de `mesh` son los puntos de entrada,
en el mismo orden. En los lados que siguen una línea de ruptura, `constraint1..3` del triángulo contiene
el `code` de esa línea.

Para respetar las líneas de ruptura, la triangulación **añade vértices** al final de `vertices`:

- donde una línea de ruptura cruza un lado de la triangulación, con la cota interpolada a lo largo de la
  ruptura;
- donde se cruzan dos líneas de ruptura, con la cota que indique `intersection_z`.

Además, un punto de entrada que cae exactamente sobre una línea de ruptura toma la cota de la ruptura en
ese punto.

```python
import mdtopx

puntos = [(0, 0, 100), (10, 0, 101), (10, 10, 103), (0, 10, 102), (7, 3, 108)]
ruptura = mdtopx.ConstraintEdge(0, 2, 1)   # lado 0-2 obligatorio, código 1

opciones = mdtopx.Options()
opciones.max_edge_length = 50

resultado = mdtopx.triangulate([mdtopx.Point3(p) for p in puntos], opciones, [ruptura])
if resultado.status == mdtopx.Status.Ok:
    malla = resultado.mesh
    print(len(malla.vertices), "vértices")   # 6: la ruptura ha añadido uno en (5, 5, 101.5)
    for t in malla.triangles:
        print(t.a, t.b, t.c, "rupturas:", t.constraint1, t.constraint2, t.constraint3)
```

## `tetrahedralize`

```python
tetrahedralize(points, options=Options3(), progress=None) -> Result3
```

Tetraedrización de Delaunay 3D de una lista de `Point3`. `Options3` solo tiene `decimals` (3). Devuelve
un `Result3` con `status` y `mesh`, un `TetraMesh` con `vertices` y `tetrahedra` (lista de `Tetra`,
con los índices `a`, `b`, `c`, `d` de sus cuatro vértices).

## `surface_3d`

```python
surface_3d(points, max_distance, options=Options3(), progress=None) -> Result
```

Superficie envolvente de una nube 3D: tetraedriza los puntos y devuelve, como `Mesh`, las caras que
separan los tetraedros con aristas menores que `max_distance` (en metros, medida en 3D) de los que las
tienen mayores. Sirve para obtener la superficie de objetos que no son una función de `(x, y)`, como un
acopio con paredes verticales.

## `cut_fill_tin`

```python
cut_fill_tin(vertices, triangles, precision=1.0) -> CutFillResult
```

Volúmenes de desmonte y terraplén de una malla cuyos vértices llevan en `z` la **diferencia de cota**
(por ejemplo, terreno final menos terreno original). Suma los prismas triangulares por encima de 0
(terraplén) y por debajo (desmonte). `precision` es el factor entre las unidades de la malla y metros
(1 si ya está en metros).

`CutFillResult`:

| Propiedad | Contenido |
|---|---|
| `fill`, `cut` | Volumen de terraplén (`z > 0`) y de desmonte (`z < 0`, en positivo), en m³. |
| `fill_area`, `cut_area` | Superficie en planta de terraplén y de desmonte, en m². |
| `height_min`, `height_max` | Diferencia de cota mínima y máxima. |
| `height_mean` | Suma de las alturas medias de los triángulos, **sin dividir** por su número. |
| `volume_count` | Número de prismas calculados. |

```python
import mdtopx

# Diferencias de cota en los vértices de una malla de 10 x 10 m
vertices = [mdtopx.Point3(0, 0, 1), mdtopx.Point3(10, 0, 1),
            mdtopx.Point3(10, 10, -1), mdtopx.Point3(0, 10, -1)]
triangulos = mdtopx.triangulate(vertices).mesh.triangles

vol = mdtopx.cut_fill_tin(vertices, triangulos)
print(f"Terraplén {vol.fill:.2f} m³ en {vol.fill_area:.2f} m², desmonte {vol.cut:.2f} m³")
```
