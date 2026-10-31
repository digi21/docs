# Camera
<!-- id: camera-2 -->
<!-- origen: 07a570983fb16e35765c723e9ae6ac8e748819ed -->

Module: [digi21.base](README.md)

Camera position, rotations, and perspective or orthographic projection. Provides camera mathematics independently of OpenGL, allowing scripts without a drawing window.

## Constructors

```python
Camera(name)
Camera(name, position, angle_x, angle_y, angle_z)
```

| Argument | Type | Description |
|---|---|---|
| `name` | `str` | Camera name |
| `position` | `tuple` | `(x, y, z)` position |
| `angle_x`, `angle_y`, `angle_z` | `float` | Three rotation angles |

## Properties

| Property | Type | R/W | Description |
|---|---|---|---|
| `name` | `str` | R/W | Camera name |
| `position` | `tuple` | R/W | `(x, y, z)` position |
| `roll` | `float` | R/W | Roll rotation |
| `pitch` | `float` | R/W | Pitch rotation |
| `yaw` | `float` | R/W | Yaw rotation |
| `rotations` | `tuple` | R/W | `(roll, pitch, yaw)` rotations |
| `up` | `tuple` | R | Up vector `(x, y, z)`, derived from rotations |
| `look` | `tuple` | R | Look vector `(x, y, z)`, derived from rotations |
| `right` | `tuple` | R | Right vector `(x, y, z)`, derived from rotations |
| `camera_matrix` | `tuple` | R | 3×3 camera matrix, with rows `right`, `up`, `look` |
| `conic` | `bool` | R | `True` for perspective cameras;<br>`False` for orthographic cameras |
| `fov` | `float` | R/W | Perspective field of view |
| `z_near` | `float` | R/W | Perspective near plane |
| `z_far` | `float` | R/W | Perspective far plane |
| `frustum_dimensions` | `tuple` | R/W | Orthographic frustum dimensions `(ancho, alto, profundidad)` |
| `standard_view_type` | [StandardViewpoint](standardviewpoint.md) | R | Standard viewpoint matching current rotations |

## Methods

| Method | Description |
|---|---|
| `set_conic(fov, z_near, z_far)` | Configure perspective projection |
| `set_orthographic(min, max)` | Configure orthographic projection from terrain bounds `(min, max)` |
| `set_standard_viewpoint_position(viewpoint, min, max)` | Position at the standard viewpoint for bounds `(min, max)` |
| `rotate_standard(viewpoint)` | Rotate to the specified standard viewpoint |
| `world_to_camera(world)` | Transform world to camera coordinates without an OpenGL context |
| `camera_to_world(camera)` | Transform camera to world coordinates without an OpenGL context |

## Example

```python
from digi21.base import Camera, StandardViewpoint

camara = Camera("vista cenital")
camara.set_orthographic((0, 0, 0), (1000, 1000, 200))
camara.rotate_standard(StandardViewpoint.Top)

print(camara.world_to_camera((500, 500, 100)))
```

## See also

* [StandardViewpoint](standardviewpoint.md)
