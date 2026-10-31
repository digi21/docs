# OpenCV
<!-- id: opencv -->
<!-- origen: d52b4e52c6817d470ff921370dd311adc6d0a164 -->

The **OpenCV** extension reads camera calibration in OpenCV format: camera matrix and distortion coefficients in `.cocv` text files. Provides only the camera; another extension supplies exterior orientations.

The camera selection file type is **Open CV camera calibration files** (`*.cocv`).

## File selection

For each image, searches in this order:

1. A `.cocv` with the image's name and folder (`107.cocv` for `107.tif`).
2. A `.cocv` with the model's camera file name or, if it has no camera file but has an aerial triangulation file, that file's name.

Searches for the image's `.cocv` first even if the model specifies another camera file. See [Camera](../README.md#camera).

## File format

| Line | Contents |
| --- | --- |
| 1 | Camera matrix first row: *fx* 0 *cx*. |
| 2 | Second row: 0 *fy* *cy*. |
| 3 | Third row. Must exist, but its contents are not read. |
| 4 | Distortion coefficients in OpenCV order: *k1* *k2* *p1* *p2* *k3* *k4* *k5* *k6*. Missing coefficients default to 0; the line may be absent. |

The first two lines must each contain exactly three values. An invalid file is not read and no message is shown: Digi3D.AI tries other extensions.

Example:

```
3650.21 0 2736.45
0 3650.21 1824.32
0 0 1
-0.0123 0.0456 0.0001 -0.0002 -0.0321
```
