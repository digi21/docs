# Inpho
<!-- id: inpho -->
<!-- origen: 75cde324230882cc2dad166e1242a8675bb98250 -->

The **Inpho** extension reads camera calibration and exterior orientations from Trimble Inpho `.prj` project files. Also opens these files as projects in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md).

## Aerial triangulation file

In **Aerial triangulation file**, select **Inpho camera files** (`*.prj`). Reads `.prj` files and checks for `$PROJECT`. If missing, displays “Unable to locate the mark $PROJECT in the file: *file*. Possibly, the file is corrupted or it is not an Inpho project file”.

Finds each model image in `$PHOTO` sections using the `$PHOTO_FILE` name without folder or extension, ignoring case.

The extension does not provide absolute orientation.

## Camera

The file contains camera calibration. Without a model camera file, reads it from the aerial triangulation file (see [Camera](../README.md#camera)): finds the camera identified by `$CAMERA_ID` in the image's `$PHOTO` section and reads the `$CAMERA` or `$CAMERA_DEFINITION` section with that `$TYPE` or `$ID`.

* **Analog camera** (`$KIND` is `FilmFrame`): internal orientation comes from `$INT_ORI` in the image's `$PHOTO` section.
* **Digital camera** (any other `$KIND`): internal orientation comes from `$CCD_INTERIOR_ORIENTATION`; image size from `$CCD_COLUMNS` and `$CCD_ROWS`. With multiple calibrations (`$CALIBRATION_SET`), reads internal orientation, focal length, principal point and distortion from `$ACTIVE_CALIBRATION`, the calibration Inpho used for aerial triangulation.

In both cases, reads focal length from `$FOCAL_LENGTH`, principal point from `$PRINCIPAL_POINT_PPS` or `$PRINCIPAL_POINT_PPA`, and distortion model from `$DISTORTION_TYPE`. Reads only the camera's own block or active calibration block, through its `$END`:

| `$DISTORTION_TYPE` | Data read |
| --- | --- |
| (no `$DISTORTION_TYPE`) | Camera without distortion. |
| `ComplexTable` | Correction grid from `$DISTORTION_TABLE`. |
| `SimpleRadial` | Radius and distortion table from `$DISTORTION`. |
| `Polynomial` | `$RADIAL_COEFFS` (two lines of four values) and `$DECENTRE_COEFFS` coefficients. |

Other values produce “A camera with unsupported distortion type: *type* was found”.

Distortion data messages:

* “The $DISTORTION_TABLE in the file *file* has an invalid number of grid points: *nx* x *ny*”: the X or Y grid point count is outside 1–1000.
* “A $DISTORTION_TABLE block in the file *file* does not contain exactly *nx* x *ny* values”: the X or Y correction block has more or fewer values than grid points.
* “A line of $DISTORTION in the file *file* has fewer than 2 values: *line*”: a `SimpleRadial` row lacks radius or distortion.

### Pixel origin

With `$PIXEL_REFERENCE : CenterTopLeft`, digital camera internal orientation places the origin at the upper-left pixel center. Digi3D.AI counts from that pixel's corner, so adds half a pixel to internal orientation. With any `$PIXEL_REFERENCE`, the camera already defines pixel origin and [Pixel origin](../../../../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/origen-del-pixel.md) does not apply.

### Converting the camera to .cam

Use **Convert to .cam...** in [Camera file editor](../../../../cuadros-de-dialogo/editor-archivos-camara.md#convert-to-cam) to obtain a Digi3D `.cam` from an Inpho project's camera. The `.cam` is generated from the active calibration.

### Camera not found

If the camera cannot be found by `$CAMERA_ID` or image name, displays “The camera with identifier: *identifier* was not located in the file: *file*”.

## Exterior orientations

From each image's `$PHOTO` section:

* `$EXT_ORI`: the first line after the marker has projection center coordinates in the second, third and fourth words; the next three lines contain the rotation matrix.
* `$TERRAIN_HEIGHT`: ground height.

## Coordinate reference system

Reads the system from the Inpho file itself:

1. Text following `$COORDINATE_SYSTEM` through the next line starting with `$`.
2. If `$COORDINATE_SYSTEM` is absent, the `$COORDINATE_SYSTEM_SET` system whose `$ID` matches `$DELIVERABLES_COORD_SYSTEM`.

With `LOCAL_CS` or an unreadable system, uses a local system. Does not read coordinate reference `.prj` files or display [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system).

Without a vertical component and with [Ask for sensor's vertical system](../../../../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) set to **Yes**, displays [Unknown vertical coordinate system](../sistema-de-referencia-del-modelo.md#vertical-coordinate-reference-system). The answer is not saved, so it asks on every model load.

## Photogrammetric project

Opening the file in [Photogrammetric project](../../../../paneles/proyecto-fotogrametrico.md) creates each `$STRIPS` strip's models from consecutive photos. In multicamera station (`$STATION`) projects, each camera is a pane viewpoint.

Differences from the aerial triangulation file:

* Reads the system only from `$COORDINATE_SYSTEM`. If unusable, loads a local system and reports in [Results](../../../../paneles/resultados.md): “The coordinate reference system of the Inpho file *file* could not be used…”.
* If no model can be formed, displays “No model has been located”.

[Inpho](../../../../cuadros-de-dialogo/configuracion/inpho/README.md) configuration controls project model creation:

* [Ask for photo skipping](../../../../cuadros-de-dialogo/configuracion/inpho/solicitar-salto-de-fotos.md): displays **Skip photos?** when opening a project.
* [Omit models for which no photo is available](../../../../cuadros-de-dialogo/configuracion/inpho/omitir-modelos-para-los-cuales-no-hay-foto.md): hides models with a missing photo.
