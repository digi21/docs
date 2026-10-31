# Intergraph
<!-- id: intergraph -->
<!-- origen: 91180e6d242bb4c921462f68f06a5c41bf67dded -->

The **Intergraph** extension reads camera calibration and exterior orientations from Intergraph projects comprising `project`, `photo`, `camera` and `model` text files in one folder. Also opens them in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md).

## Aerial triangulation file

In **Aerial triangulation file**, select the project's `project` file using **Intergraph's project files (project)** (`*project*`). Reads only a file named exactly `project`, without extension. Does not read the contents of `project`: reads `photo`, `camera` and `model` in the same folder.

The extension does not provide absolute orientation.

## File formats

Each of the three files has blocks starting with `begin` and ending with `end`. Inside, each line starts with a field name ending in `:`, followed by its values.

**`photo`**: one block per image, beginning `begin photo_parameters` *number* `strip_id` *strip*. Reads:

| Field | Contents |
| --- | --- |
| `camera_name:` | Camera name in `camera`. |
| `image_id:` | Image path. |
| `image_size:` | Image width and height in pixels. |
| `EO_parameters:` | Projection center X, Y and Z and omega, phi and kappa rotations. |
| `IO_parameters:` | Analog camera internal orientation. |

**`camera`**: one block per camera, beginning `begin camera_parameters` *name*. Reads `focal_length:`, `ppac:` (principal point) and `film_format:` (format width and height).

**`model`**: one block per model, beginning `begin model` *strip*`~`*photo*`+`*strip*`~`*photo*. Reads `AO_parametersL:` and `AO_parametersR:` (left and right image projection centers and rotations) and a ground point from the first `AO_obs:` line.

Example `photo` block:

```
begin photo_parameters 107 strip_id 1
camera_name: RMK
image_id: D:\vuelo\107.tif
image_size: 11500 11500
EO_parameters: 445210.123 4485012.456 2345.678 0.1234 -0.5678 90.1234
end
```

## Images and models

Finds each model image in `photo` using the `image_id:` file name including extension, ignoring case. Forms the model name from both images' strip and number (`1~107+1~108`), which must exist in `model`. If absent, displays “Unable to find model *model*”.

## Exterior orientations

If both images have `EO_parameters:` in `photo`, uses both images' `EO_parameters:`. Otherwise uses the model's `AO_parametersL:` and `AO_parametersR:`. Rotations are in degrees; builds the matrix in omega, phi, kappa order.

## Camera

Without a model camera file, reads the project camera named by the image's `camera_name:` (see [Camera](../README.md#camera)). Calculates pixel size by dividing `film_format:` by `image_size:`. Intergraph cameras have no distortion correction.

Loading a model with the aerial triangulation file always creates a digital camera. Opening the project in Photogrammetric project creates an analog camera with internal orientation if the image has `IO_parameters:`.

## Coordinate reference system

Reads `project.prj` in the project folder. If absent, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Photogrammetric project

Opening `project` in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md) creates one model per `model` block, grouped by strip. Missing images cause models using them to be skipped and “Image not located: *image*” to be written in [Results](../../../../paneles/resultados.md).

## Error messages

* “The \"photo\" file is not located in the *folder* directory”, and equivalents for `camera` and `model`: a project file is missing.
* “No data located for photo *image*”: `photo` does not contain the image.
* “The camera «*camera*» was not found in the project's camera file.”: `camera` lacks the camera named by `camera_name:`.
* “The photos of model *model* have no EO_parameters, and the model has no AO_parametersL or AO_parametersR line in the \"model\" file.”: either image lacks `EO_parameters:` in `photo`, and its `model` block lacks `AO_parametersL:` or `AO_parametersR:`.
