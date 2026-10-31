# Pix4D
<!-- id: pix4d -->
<!-- origen: c559086ad829bddd7d5a152ff17a93ebc92a4da9 -->

The **Pix4D** extension reads exterior orientations and camera calibration from two Pix4D text files:

* `*_calibrated_external_camera_parameters.txt`: image exterior orientations.
* `*_pix4d_calibrated_internal_camera_parameters.cam`: camera calibration.

## Aerial triangulation file

In **Aerial triangulation file**, select **Pix4D's calibrated external camera parameters (\*_calibrated_external_camera_parameters.txt)**. Reads only names ending in `_calibrated_external_camera_parameters.txt`.

Each line contains image file name, projection center X, Y and Z, and omega, phi and kappa rotations. Compares the first word with the model image's file name including extension, ignoring case. Skips nonmatching lines (such as the header) and lines with fewer than seven words.

Rotations are in degrees; builds the matrix in omega, phi, kappa order. Does not use projection center and rotations importer settings.

Example:

```
imageName X Y Z Omega Phi Kappa
IMG_0107.JPG 445210.123 4485012.456 245.678 0.1234 -0.5678 90.1234
IMG_0108.JPG 445230.321 4485013.654 246.012 0.2345 -0.4567 90.2345
```

The extension does not provide absolute orientation.

## Camera

The exterior orientation file contains no camera calibration. Specify the same Pix4D project's `*_pix4d_calibrated_internal_camera_parameters.cam` as the model camera file, or select it when prompted (see [Camera](../README.md#camera)). Its camera selection type is **Pix4D camera files**.

Reads:

* The first line, which must start with `Pix4D camera calibration file`.
* A line starting with `#Focal`, containing sensor size in millimeters as *width*`x`*height*`mm` (for example, `#Focal Length mm assuming a sensor width of 12.83x8.55mm`). Calculates pixel size by dividing sensor width and height by image pixel width and height.
* Lines starting with `F` (focal length in millimeters), `Px` and `Py` (principal point), `K1`, `K2` and `K3` (radial distortion), and `T1` and `T2` (tangential distortion), followed by their values. Names are case-insensitive.

Example:

```
Pix4D camera calibration file 0
#Focal Length mm assuming a sensor width of 12.83x8.55mm
F 10.5
Px 6.41
Py 4.27
K1 -0.003
K2 0.01
K3 -0.008
T1 0.0001
T2 -0.0002
```

## Coordinate reference system

Reads the `.prj` with the exterior orientation file's name (`proyecto_calibrated_external_camera_parameters.prj`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Error messages

* “Unable to open the file: *file*”: cannot open the exterior orientation file.
* “Unable to find the orientation for the image *image* in the file *file*”: no line with at least seven words matches the left or right model image.
* “The first line of the file is not \"Pix4D camera calibration file\"”: the camera file is not Pix4D.
* “The line beginning with \"#Focal Length mm assuming a sensor width of\" was not found in file *file*” and “The line beginning with \"#Focal\" does not have the expected format (width x height mm) in file *file*”: missing or malformed sensor size; expected *width*`x`*height*`mm`.
* “The line indicating… was not found”: a camera line `F`, `Px`, `Py`, `K1`, `K2`, `K3`, `T1` or `T2` is missing.
