# Paquete `mdtopx`

El paquete raíz contiene el **motor de cálculo** de MDTopX: los tipos geométricos, la **escena** que
intercambian todos los formatos y los algoritmos. Es el mismo motor que usa MDTopX por dentro.

```python
import mdtopx
```

Los algoritmos se documentan por áreas:

| Página | Contenido |
|---|---|
| [Triangulación y volúmenes](mdtopx-triangulacion.md) | `triangulate`, `tetrahedralize`, `surface_3d`, `cut_fill_tin`. |
| [Modelos digitales de elevaciones](mdtopx-mde.md) | `Grid`, sombreado, pendientes, orientaciones, tintas hipsométricas y vectores de pendiente. |
| [Nubes de puntos](mdtopx-nubes.md) | `PointCloud`, filtrado por rejilla, ajuste de planos, troceado y filtrado de archivos. |
| [Cubicación de acopios](mdtopx-acopios.md) | Clasificación de suelo y techo, paredes y cubicación por zonas. |

## Tipos geométricos

| Tipo | Contenido |
|---|---|
| `Point3` | Punto 3D: `x`, `y`, `z` (coordenadas terreno, `double`). Se construye con `Point3(x, y, z)` o `Point3((x, y, z))`. |
| `Triangle` | Triángulo: índices `a`, `b`, `c` en la lista de vértices de su malla (base 0) y `constraint1`, `constraint2`, `constraint3`: código de la línea de ruptura de los lados a-b, b-c y c-a (`-1` = ninguna). |
| `Mesh` | Malla triangulada: `vertices` (lista de `Point3`) y `triangles` (lista de `Triangle`). |
| `LidarPoint` | Punto de una nube, con sus atributos LiDAR. Ver [Nubes de puntos](mdtopx-nubes.md). |
| `PointCloud` | Nube de puntos. Ver [Nubes de puntos](mdtopx-nubes.md). |
| `Grid` | Rejilla regular de cotas. Ver [Modelos digitales de elevaciones](mdtopx-mde.md). |

Donde se espera un `Point3` también se puede pasar una tupla `(x, y, z)` o `(x, y)` (con `z = 0`).

> Las listas (`vertices`, `triangles`, `points`, y también las de la escena: `polylines`, `meshes`…)
> se **copian** cada vez que se accede a ellas desde Python. Esto tiene dos consecuencias:
>
> - En bucles, guárdalas antes en una variable: `vertices = malla.vertices` y luego
>   `for v in vertices: ...`.
> - Para modificarlas **no uses** `append` ni asignes elementos sueltos (`escena.polylines.append(l)`
>   cambia una copia y la escena no se entera). Construye la lista y **asígnala**:
>   `escena.polylines = [linea1, linea2]`, o `escena.polylines = escena.polylines + [linea]`.

## La escena

Una `Scene` es el contenedor que leen y escriben todos los formatos de [`mdtopx.io`](mdtopx-io.md).
Cada formato usa las listas que le corresponden:

| Propiedad | Contenido | Tipo de cada elemento |
|---|---|---|
| `points` | Puntos sueltos | `PointEntity` (`p`, `layer`, `id`, `attributes`) |
| `polylines` | Líneas y polígonos | `Polyline` (`vertices`, `closed`, `layer_code`, `digi_attributes`, `perimeter`, `area`…) |
| `texts` | Textos | `TextEntity` (`pos`, `text`, `height`, `rotation`, `justification`, `layer_code`…) |
| `clouds` | Nubes de puntos | `CloudEntity` (`cloud`, `is_lidar`, `layer`, `id`) |
| `meshes` | Mallas trianguladas | `MeshEntity` (`mesh`, `id`, `layer_code`, `layer`) |
| `grids` | Rejillas de cotas | `GridEntity` (`grid`) |
| `images` | Imágenes en color | `ImageEntity` (`width`, `height`, `channels`, `data`, georreferencia…) |
| `layers` | Capas o códigos | `Layer` (`name`, `code`) |
| `srs` | Sistema de referencia en WKT, si el formato lo guarda | `str` |

`is_empty()` indica si la escena no tiene ningún contenido.

```python
import mdtopx
from mdtopx.io.vector import dxf

linea = mdtopx.Polyline()
linea.vertices = [(0, 0, 10), (10, 0, 12), (10, 10, 11)]
linea.layer_code = "EJE"

escena = mdtopx.Scene()
escena.polylines = [linea]   # asignar la lista: append no modificaría la escena

dxf.write(r"C:\datos\eje.dxf", escena)
```

## Estado y progreso

Las funciones del motor devuelven un `Status`, solo o dentro de un objeto resultado:

| Valor | Significado |
|---|---|
| `Ok` | Correcto. |
| `NoPoints` | No hay datos suficientes (por ejemplo, menos de 3 puntos para triangular). |
| `InvalidData` | Datos o parámetros no válidos. |
| `TriangulationError` | La triangulación ha fallado. |
| `Cancelled` | El usuario ha cancelado desde la función de progreso. |

Las funciones que pueden tardar aceptan el argumento `progress`: una función que recibe la fracción
completada (de `0.0` a `1.0`) y devuelve `True` para continuar o `False` para cancelar.

```python
def progreso(fraccion):
    print(f"\r{fraccion:.0%}", end="")
    return True

resultado = mdtopx.triangulate(puntos, progress=progreso)
```
