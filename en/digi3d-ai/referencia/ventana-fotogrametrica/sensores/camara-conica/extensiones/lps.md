# LPS
<!-- id: lps -->
<!-- origen: 3213c0f4ebd1c048cb628a5ceba98172f4770ac2 -->

The **LPS** extension reads camera calibration and exterior orientations from LPS (Leica Photogrammetry Suite) `.blk` block files.

## Aerial triangulation file

In **Aerial triangulation file**, select **LPS project files** (`*.blk`). Reads only `.blk` files.

The `.blk` is an HFA binary file. Checks `EHFA_HEADER_TAG` and that the file dictionary defines `Camera_DataV4` or `Camera_DataV3`, `Triangulation_Parameters`, `Camera_InfoV4` or `Camera_Info`, `InitExt_Info` and `ROImg_Info` using recognized definitions. Missing or different definitions produce a message naming the structure, for example “The structure format \"Camera_DataV4\" is not compatible with this implementation”.

Finds each image in `Image_data` by file name without folder, ignoring case. Compares names without extensions for both exterior orientation and camera.

The extension does not provide absolute orientation.

## Camera

The file contains calibration. Without a model camera file, reads it from the aerial triangulation file (see [Camera](../README.md#camera)). For each image, reads:

* From its camera (`CameraIndex`): focal length, principal point and fiducial marks. Reads marks as x, y pairs; ignores the last value if the count is odd.
* From the image: image-to-plate transformation (`ImageToFilm`) and pixel dimensions.

LPS cameras receive no distortion correction.

## Exterior orientations

Reads projection center and omega, phi and kappa rotations in radians from each image's `FinalExterior`. Builds the matrix in omega, phi, kappa order. Does not read the block's `RotationType`.

## Coordinate reference system

Reads the `.prj` with the aerial triangulation file's name (`bloque.prj` for `bloque.blk`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Error messages

* “Unable to load the file: *file*. Windows reported the following error string: *error*”: cannot open the file.
* “An unknown error occurred when creating the model for the images: *left* and *right* in the file *file*”: cannot find or read either image's exterior orientation.
* “Unable to locate the orientation of the image: *image* in the file: *file*.”: cannot find the image while reading its camera.
* “The HFA file declares an array of *n* elements that does not fit in the file; it may be corrupt: *file*”: a list's element count is negative or exceeds the remaining data.
