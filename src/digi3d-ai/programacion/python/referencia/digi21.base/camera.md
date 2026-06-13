# Camera

Módulo: [digi21.base](README.md)

Representa una cámara: su posición, sus rotaciones y su proyección (cónica u
ortográfica). Incluye la parte matemática del manejo de la cámara, independiente de
OpenGL, por lo que se puede usar en guiones sin una ventana de dibujo.

## Constructores

```python
Camera(name)
Camera(name, position, angle_x, angle_y, angle_z)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `name` | `str` | Nombre de la cámara. |
| `position` | `tuple` | Posición `(x, y, z)`. |
| `angle_x`, `angle_y`, `angle_z` | `float` | Los tres ángulos de rotación. |

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `name` | `str` | L/E | Nombre de la cámara. |
| `position` | `tuple` | L/E | Posición `(x, y, z)`. |
| `roll` | `float` | L/E | Rotación *roll*. |
| `pitch` | `float` | L/E | Rotación *pitch*. |
| `yaw` | `float` | L/E | Rotación *yaw*. |
| `rotations` | `tuple` | L/E | Rotaciones `(roll, pitch, yaw)`. |
| `up` | `tuple` | L | Vector "arriba" `(x, y, z)`, derivado de las rotaciones. |
| `look` | `tuple` | L | Vector "mirada" `(x, y, z)`, derivado de las rotaciones. |
| `right` | `tuple` | L | Vector "derecha" `(x, y, z)`, derivado de las rotaciones. |
| `camera_matrix` | `tuple` | L | Matriz 3x3 de la cámara (filas: `right`, `up`, `look`). |
| `conic` | `bool` | L |`True` si la cámara es cónica<br>`False` si es ortográfica.|
| `fov` | `float` | L/E | Campo de visión (cámara cónica). |
| `z_near` | `float` | L/E | Plano cercano (cámara cónica). |
| `z_far` | `float` | L/E | Plano lejano (cámara cónica). |
| `frustum_dimensions` | `tuple` | L/E | Dimensiones del frustum ortográfico `(ancho, alto, profundidad)`. |
| `standard_view_type` | [StandardViewpoint](standardviewpoint.md) | L | Punto de vista estándar al que corresponden las rotaciones actuales. |

## Métodos

| Método | Descripción |
|---|---|
| `set_conic(fov, z_near, z_far)` | Configura la cámara como cónica. |
| `set_orthographic(min, max)` | Configura la cámara como ortográfica a partir de la caja del terreno `(min, max)`. |
| `set_standard_viewpoint_position(viewpoint, min, max)` | Sitúa la cámara en la posición del punto de vista estándar para la caja `(min, max)`. |
| `rotate_standard(viewpoint)` | Rota la cámara al punto de vista estándar indicado. |
| `world_to_camera(world)` | Transforma un punto del mundo a coordenadas de cámara (no necesita contexto OpenGL). |
| `camera_to_world(camera)` | Transforma un punto en coordenadas de cámara al mundo (no necesita contexto OpenGL). |

## Ejemplo

```python
from digi21.base import Camera, StandardViewpoint

camara = Camera("vista cenital")
camara.set_orthographic((0, 0, 0), (1000, 1000, 200))
camara.rotate_standard(StandardViewpoint.Top)

print(camara.world_to_camera((500, 500, 100)))
```

## Véase también

- [StandardViewpoint](standardviewpoint.md)
