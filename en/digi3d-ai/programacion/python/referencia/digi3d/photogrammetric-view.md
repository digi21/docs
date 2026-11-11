# PhotogrammetricView
<!-- id: photogrammetric-view -->
<!-- origen: 9821040ff22a246a7a047d2ea7211fb4a6a8b414 -->

Module: `digi3d`

Represents the **photogrammetric window**. Lets you move the cursor, change the zoom, switch models,
and, for point cloud and stereoscopic orthophoto models, position the 3D camera.

Obtain it with [`photogrammetric_view()`](functions.md#photogrammetric_view), which returns `None` if
no photogrammetric window is open:

```python
import digi3d

p = digi3d.photogrammetric_view()
if p is not None:
    print(p.model_name, p.ground_coordinates)
```

The object is not bound to a particular window: each property and method acts on the photogrammetric
window active at the time of the call. If you close all photogrammetric
windows, the call raises `RuntimeError`.

## Cursor position and zoom

| Property | Type | Description |
|---|---|---|
| `ground_coordinates` | `(x, y, z)` | Gets or sets the cursor position in ground coordinates, in the sensor coordinate system. |
| `model_coordinates` | `(x, y, z)` | Gets or sets the cursor position in model coordinates. |
| `zoom` | `float` | Gets or sets the zoom factor: `1` displays one image pixel per screen pixel, `2` zooms in, and `0.5` zooms out. |

The sensor and digital terrain model may adjust the assigned position, and Digi3D.AI
rounds zoom factors below 1 to the nearest pyramid level, up to a maximum of 128.
After assigning a position or zoom, read the property again to find the applied value.

| Method | Description |
|---|---|
| `go_to_origin()` | Moves the cursor to the model origin point. |
| `close()` | Closes the active photogrammetric window, just as when you close the window. Returns `False` if the window remains open. |

```python
p = digi3d.photogrammetric_view()
p.ground_coordinates = (448210.0, 4479360.0, 650.0)
p.zoom = 2
print(p.ground_coordinates, p.zoom)
```

## Loaded model

| Property | Type | Description |
|---|---|---|
| `model_name` | `str` | Name of the loaded model. If the model was opened from a `.d3d` file, it is the name of that file without extension; otherwise, it is the name formed by the sensor. |
| `sensor_name` | `str` | Sensor name of the loaded model. |
| `loading_model` | `bool` | `True` while a model requested with [`load_model`](functions.md#load_model) or the methods in this table loads in the background. |

| Method | Returns | Description |
|---|---|---|
| `next_model()` | `bool` | Requests loading of the next model in the project. |
| `previous_model()` | `bool` | Requests loading of the previous model in the project. |
| `next_strip()` | `bool` | Requests loading of the model in the next strip. |
| `previous_strip()` | `bool` | Requests loading of the model in the previous strip. |

These methods return `False` if automatic model switching is enabled, a model is already
loading, or the active photogrammetric window was opened with a point cloud or stereoscopic
orthophoto model, because those windows do not load another model in the background. When the
active photogrammetric window was opened with a point cloud or stereoscopic orthophoto model,
[`load_model`](functions.md#load_model) opens the requested model in a new photogrammetric window.

For requests accepted by `next_model`, `previous_model`, `next_strip` or `previous_strip`,
Digi3D.AI loads the requested model **after the script finishes**: within the same
script, `model_name` still returns the previous model. Check `model_name` or `loading_model` in
a later script.

## 3D camera

Point cloud and stereoscopic orthophoto models have a 3D camera with its own position and
orientation. Other sensors have no camera.

| Member | Description |
|---|---|
| `camera` | Returns a dictionary containing `position` `(x, y, z)` in ground coordinates, `omega` (tilt) and `kappa` (heading) in sexagesimal degrees, and `fov` (field of view) in degrees. Returns `None` if the sensor has no camera. |
| `set_camera(position, omega, kappa)` | Positions the camera at `position` `(x, y, z)` and orients it using `omega` and `kappa`, in sexagesimal degrees. Raises `RuntimeError` if the sensor has no camera. |

```python
p = digi3d.photogrammetric_view()
if p.camera is not None:
    x, y, z = p.camera["position"]
    p.set_camera((x, y, z + 50), omega=-30, kappa=p.camera["kappa"])
```

## Commands

| Method | Returns | Description |
|---|---|---|
| `run_command(command)` | `bool` | Runs a photogrammetric window command, with optional parameters after `=`, for example `run_command("PLOT_ZOOMIN")`. Looks up the name in the configured language and, if not found, in all languages. Returns `False` if the command could not be created, and raises `ValueError` if the command does not exist. |

## See also

- [Module functions](functions.md) — `photogrammetric_view`, `open_project`, `project`, `load_model`.
- [DrawingView](drawing-view.md)
