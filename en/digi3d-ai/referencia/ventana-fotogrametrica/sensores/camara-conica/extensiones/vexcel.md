# Vexcel
<!-- id: vexcel -->
<!-- origen: 0fadd982176b425297cd12fe78716b5b86095049 -->

The **Vexcel** extension reads camera calibration from TIFF (Tagged Image File Format) image headers of Vexcel UltraCam cameras. Provides only the camera; another extension, such as [IMU](imu.md), supplies exterior orientations.

## Data read

Does not use the model's camera file: reads the image itself. Supports `.tif`, `.tiff`, `.smti` or `.pyr` images whose description (TIFF *ImageDescription* tag) begins with `Vexcel` or `UltraCam`. For other images, or those that cannot be opened as TIFF, Digi3D.AI tries other extensions (see [Camera](../README.md#camera)).

Reads the value following each key in the description:

| Key | Contents |
| --- | --- |
| `PRINCIPLE_DISTANCE:` or `PRINCIPAL_DISTANCE:` | Focal length. |
| `PRINCIPLE_POINT_X:` or `PRINCIPAL_POINT_X:` | Principal point X coordinate. |
| `PRINCIPLE_POINT_Y:` or `PRINCIPAL_POINT_Y:` | Principal point Y coordinate. |
| `PIXEL_SIZE_WIDTH:` | Pixel width in micrometers. |
| `PIXEL_SIZE_HEIGTH:` or `PIXEL_SIZE_HEIGHT:` | Pixel height in micrometers. |

The camera has no distortion correction.

## Error messages

* “Error when obtaining the camera parameters from the .tiff file: *image* Unable to locate *key*”: the image description lacks one of the listed keys.
