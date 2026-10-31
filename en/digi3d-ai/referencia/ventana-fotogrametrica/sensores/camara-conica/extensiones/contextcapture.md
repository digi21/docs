# ContextCapture
<!-- id: contextcapture -->
<!-- origen: e236ce0a98053ba75cc59310cd05c8a4a8aac0e1 -->

The **ContextCapture** extension reads camera calibration and exterior orientations from ContextCapture XML exports in *BlocksExchange* format.

## Aerial triangulation file

In **Aerial triangulation file**, select **ContextCapture project files** (`*.xml`). Reads only `.xml` files containing a `BlocksExchange` node. Malformed XML produces “Error on line: *n*, column: *n*” with the reason.

The extension does not provide absolute orientation.

## Images

For each model image, searches for a `Photo` node whose `ImagePath` exactly matches its path. The comparison is textual: paths must match character for character, including case and folder separators. No matching node produces “Unable to find the parameters for image: *image*”.

## Camera

The file contains camera calibration. If the model has no camera file, Digi3D.AI reads it from each image's photo group (`Photo` parent node; see [Camera](../README.md#camera)):

* Focal length: `FocalLength` in millimeters, converted to pixels using `SensorSize` and the larger side of `ImageDimensions` (`Width`, `Height`); if `FocalLength` is absent, `FocalLengthPixels`.
* Principal point: `PrincipalPoint/x` and `PrincipalPoint/y`.
* Distortion: `Distortion/K1`, `K2` and `K3` (radial), and `Distortion/P1` and `P2` (tangential).

## Exterior orientations

For each image, reads the projection center from `Pose/Center` (`x`, `y`, `z`) and rotations from `Pose/Rotation`:

* If `Pose/Rotation/Omega` exists, reads `Omega`, `Phi` and `Kappa` in degrees and builds the rotation matrix in omega, phi, kappa order.
* If `Pose/Rotation/Omega` is absent, reads the rotation matrix from `M_00` through `M_22`.

## Coordinate reference system

Uses `SpatialReferenceSystems/SRS/Definition` from the file's first `SRS` node. If `SpatialReferenceSystems/SRS/Definition` is missing, displays “Unable to find the node SpatialReferenceSystems/SRS/Definition in the ContextCapture file”. Does not read `.prj` or display the dialogs under [Model without a coordinate reference system](../sistema-de-referencia-del-modelo.md), including when the system has no vertical component.
