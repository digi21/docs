# RapidCal
<!-- id: rapidcal -->
<!-- origen: 191e6fa4a95184bb8ed77343619891138f875f6f -->

The **RapidCal** extension reads camera calibration from RapidCal `.cal` files. Provides only the camera; another extension supplies exterior orientations.

The camera selection file type is **RapidCal camera files** (`*.cal`). Reads only `.cal` files specified as the model's camera file or selected when Digi3D.AI requests the camera (see [Camera](../README.md#camera)).

## File format

Each line has a space-separated key and value. Keys are case-insensitive; other lines are ignored. All keys are required:

| Key | Values |
| --- | --- |
| `Focal_length` | Focal length. |
| `Principal_point_x`, `Principal_point_y` | Principal point. |
| `General_scaling` | Overall scale. |
| `Affinity` | Affinity. |
| `Radial_k1`, `Radial_k2`, `Radial_k3` | Radial distortion coefficients. |
| `Tangential_t1`, `Tangential_t2` | Tangential distortion coefficients. |
| `Un-orthogonality` | Nonorthogonality. |
| `Sensor_width` | Sensor width in pixels and length units. |
| `Sensor_height` | Sensor height in pixels and length units. |

Digi3D.AI uses the pixel dimensions from `Sensor_width` and `Sensor_height`.

Example:

```
Focal_length 35.1234
Principal_point_x 0.0123
Principal_point_y -0.0456
General_scaling 1.0
Affinity 0.0
Radial_k1 -0.0001
Radial_k2 0.0
Radial_k3 0.0
Tangential_t1 0.0
Tangential_t2 0.0
Un-orthogonality 0.0
Sensor_width 6000 23.5
Sensor_height 4000 15.6
```

## Error messages

* “The following error was located when opening the file *file*: *error*”: cannot open the file.
* “Unable to find the word: \"*key*\" in the file: *file*”: a required key is missing.
