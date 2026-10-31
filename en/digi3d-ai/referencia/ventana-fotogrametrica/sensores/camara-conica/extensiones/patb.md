# PatB
<!-- id: patb -->
<!-- origen: a678ee5f810329a1efcc1b1c2033d12ec2d8c6cf -->

The **PatB** extension reads exterior orientations from PAT-B `.ori` orientation files.

## Aerial triangulation file

In **Aerial triangulation file**, select **PatB orientations (\*.ori)** (`*.ori`). Reads only `.ori` files.

The file does not contain camera calibration. Specify a camera file in the model or select one when prompted (see [Camera](../README.md#camera)).

The extension does not provide absolute orientation.

## File format

Each image occupies three lines:

1. Image name, an unused value, and projection center X, Y and Z.
2. First five rotation matrix elements.
3. Remaining four rotation matrix elements.

Reads three-line blocks from the first line, so the file cannot have headers or extra lines between blocks. Compares image names against the model image's file name without extension, ignoring case.

Example:

```
107 153.000 445210.123 4485012.456 2345.678
0.999998 -0.001234 0.001111 0.001230 0.999997
-0.002000 -0.001114 0.002001 0.999998
108 153.000 445890.321 4485020.654 2346.012
0.999997 -0.002100 0.001010 0.002098 0.999996
-0.001900 -0.001013 0.001898 0.999998
```

## Coordinate reference system

Reads the `.prj` with the same name as the aerial triangulation file (`vuelo.prj` for `vuelo.ori`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system). Does not ask for the vertical system.

## Error messages

* “The following error was encountered when opening the file *file*: *error*”: cannot open the aerial triangulation file.
* “Unable to find the orientation for the image: *image* in the file: *file*”: no block matches the left or right model image.
* “The block of the image: *image* in the file: *file* is incomplete: line *n* has *n* values and *m* were expected”: the first line has fewer than five words, the second fewer than five values, the third fewer than four, or the file ends before the third line.
