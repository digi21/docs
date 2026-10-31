# AeroOffice
<!-- id: aerooffice -->
<!-- origen: 53f6da7ad636f721f2a74461f0ebb53a76515f9b -->

The **AeroOffice** extension reads exterior orientations from AEROoffice `.exp` export files.

## Aerial triangulation file

In **Aerial triangulation file**, select **AeroOffice orientation files** (`*.exp`). Reads only `.exp` files.

The file does not contain camera calibration. Specify a camera file in the model or select one when prompted (see [Camera](../README.md#camera)).

The extension does not provide absolute orientation.

## File format

Digi3D.AI checks and reads the file in this order:

1. The second word of the second line must be `AEROoffice`.
2. Finds the first line whose second word is `Format:`.
3. The next line contains column names. Its first word is not a column: the second word names the first data column, the third names the second, and so on. Searches for:

   | Column | Contents |
   | --- | --- |
   | `ID` | Image name without extension. |
   | `Easting` | Projection center X coordinate. |
   | `Northing` | Projection center Y coordinate. |
   | `Height` or `HeightORTO` | Projection center Z coordinate. |
   | `Omega`, `Phi`, `Kappa` | Rotations in degrees. Builds the rotation matrix in omega, phi, kappa order. |

4. Subsequent lines contain data, one image per line. Skips lines with fewer columns than required.

`AEROoffice`, `Format:`, column names and comparison of `ID` against the model image's file name without extension are case-sensitive.

## Coordinate reference system

Reads the `.prj` with the same name as the aerial triangulation file (`vuelo.prj` for `vuelo.exp`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Error messages

* “The following error was located when opening the file *file*: *error*”: cannot open the aerial triangulation file.
* “Error when analyzing the file: *file*. It was not possible to find the word: *word*”: missing `AEROoffice`, `Format:` or a required column.
* “It was not possible to find the orientation for the image: *image* in the file: *file*”: no data line matches the left or right model image.
