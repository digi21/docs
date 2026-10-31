# Summit
<!-- id: summit -->
<!-- origen: 8248847eafe9f1c4d5605744b71a152359f9d9db -->

The **Summit** extension reads camera calibration and exterior orientations from Summit Evolution `.smtxml` projects. Also opens them in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md).

## Aerial triangulation file

In **Aerial triangulation file**, select **Summit Evolution project files** (`*.smtxml`). Reads only aerial `.smtxml` projects: `/SummitProject/ProjectType` must equal `Aerial`. Otherwise displays “The .SMTXML file is not \"Aerial\"”.

Finds each model image in `/SummitProject/Images/ImageInfo` using the `ImageFile` name without folder or extension, ignoring case. If absent, displays “Unable to find information for the photo: *image*”.

Does not read Summit Evolution `.camera` files: reads the camera from `.smtxml`.

The extension does not provide absolute orientation.

## Exterior orientations

From each image's `ImageInfo`, reads:

* `Exterior/ProjectionCenter`: projection center X, Y and Z.
* `Exterior/Angles`: omega, phi and kappa rotations. Builds the matrix in omega, phi, kappa order.
* `Exterior/AngleUnits`: `RADIANS` means radians; any other value means degrees.
* `Rotation`: image rotation in degrees (0, 90, 180 or 270). Applies it when loading the image and accounts for it when creating the camera.

Gets mean ground height from `AveZ` in `/SummitProject/ProjectZ`, in projection center Z units. Without `AveZ`, assigns 0 in those units.

## Camera

The file contains calibration. Without a model camera file, reads it from the aerial triangulation file (see [Camera](../README.md#camera)):

1. The image's `AssignedCamera` identifies its position in `/SummitProject/CameraList` (0 is first).
2. Reads text from `/SummitProject/InternalCameras/IntCam` whose `Key` matches that camera name. One key per line: `FOCAL_LENGTH:`, `PRINCIPAL_POINT:`, `FILM_WIDTH:`, `FILM_HEIGHT:`, `IS_DIGITAL:`, `CAM_DIGITAL_CAM_ROTATION:` and `CALIBRATION_TYPE:`.
3. Calculates pixel size using `FILM_WIDTH:`, `FILM_HEIGHT:` and image `Dimensions`.

Supports only digital cameras (nonzero `IS_DIGITAL:`) without `CALIBRATION_TYPE:`. Analog cameras or distortion calibrations (radial, table or 7-parameter formula) produce a message beginning “Summit Evolution cameras with… are not implemented yet”.

## Coordinate reference system

Reads the `.prj` with the `.smtxml` file's name (`proyecto.prj` for `proyecto.smtxml`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Photogrammetric project

Opening `.smtxml` in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md) creates one model per `/SummitProject/Models/ModelInfo`, using `ModelName`, `ModelLeft` and `ModelRight`. All models form one strip. Nonaerial projects do not open in the pane.

## Error messages

* “Error when loading file: *file*. Line: *n*, column: *n*”: malformed XML.
* “Unable to create camera because the variable: *key* was not located”: missing `FOCAL_LENGTH:`, `PRINCIPAL_POINT:`, `IS_DIGITAL:`, `FILM_WIDTH:` or `FILM_HEIGHT:`.
* “The value of the variable \"CAM_DIGITAL_CAM_ROTATION\" does not belong to the group {0,1,2,3}”: invalid camera rotation.
* “The node *node* has *n* values and 3 were expected in the file: *file*”: an image's `Exterior/ProjectionCenter` or `Exterior/Angles` has fewer than three values.
* “Unknown error when loading file: *file*”: a read error, such as a missing required node.
