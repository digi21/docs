# DVP
<!-- id: dvp -->
<!-- origen: 465f47bb9090d8d80fe74edb2e513f2830d73588 -->

The **DVP** extension reads camera calibration and exterior orientation from DVP `.par` photo orientation files. Each image has a `.par` with the same name and folder (`107.par` for `107.tif`).

## .par files

Does not use **Aerial triangulation file** for orientations: when loading a model, searches for both images' `.par` files. If both `.par` files exist, reads exterior orientations from them, even if the model has no aerial triangulation file. The file selection type is **DVP's photo orientation files** (`*.par`).

Reads these keys, case-insensitively, with their values on the same line:

| Key | Values |
| --- | --- |
| `$FOC00` | Focal length. |
| `$XYZ00` | Projection center X, Y and Z. |
| `$OPK00` | Omega, phi and kappa rotations in degrees. Builds the rotation matrix in omega, phi, kappa order. |
| `$PARAFFINE00` | Six coefficients of the affine transformation from pixels to plate coordinates. |

Other lines are ignored. Example:

```
$FOC00 153.000
$XYZ00 445210.123 4485012.456 2345.678
$OPK00 0.1234 -0.5678 90.1234
$PARAFFINE00 0.021 0.000 -115.000 0.000 -0.021 115.000
```

The extension does not provide absolute orientation.

## Camera

The `.par` contains camera calibration: focal length from `$FOC00` and affine transformation from `$PARAFFINE00`. The principal point is (0, 0); there is no distortion correction.

Reads the camera from a `.par` corresponding, in order, to the model's camera file, its aerial triangulation file if it has no camera file, or the image if it has neither (see [Camera](../README.md#camera)).

## Coordinate reference system

Reads the `.prj` with the left image's name and folder (`107.prj` for `107.tif`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system), which creates `.prj` beside the left image. Does not ask for the vertical system.

## Error messages

* “The following error was located when opening the file *file*: *error*”: cannot open a `.par`.
* “Unable to find the variable: *key* in the file: *file*”: missing `$FOC00`, `$XYZ00`, `$OPK00` or `$PARAFFINE00`.
