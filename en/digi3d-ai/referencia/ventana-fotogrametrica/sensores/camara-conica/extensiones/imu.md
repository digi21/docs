# IMU
<!-- id: imu -->
<!-- origen: efbbbfce00cb2a3154132a49ba9bfbba4f5fbc2f -->

The **IMU** extension reads exterior orientations from `.eo` and `.imu` text files specifying each image's projection center and three rotations. Also supports UltraMap `.eo` format.

## Aerial triangulation file

In **Aerial triangulation file**, select **Projection and rotation centers (\*.eo,\*.imu)** (`*.eo;*.imu`). Reads only `.eo` or `.imu` files.

The file does not contain camera calibration. Specify a camera file in the model or select one when prompted (see [Camera](../README.md#camera)).

The extension does not provide absolute orientation.

## File format

Supports two formats:

* **Classic**: one line per image, with image name and space-separated values.
* **UltraMap**: a sectioned file. `[PARAMETERS]` contains `EPSG_CODE`; `[Events]` has one line per image with event number and `;`-separated values.

Both follow the same rules:

* Skips blank lines, lines starting with `#` (comments) and lines starting with `[` (section headers).
* A line starting with `EPSG_CODE;` specifies the coordinate reference system (see [Coordinate reference system](#coordinate-reference-system)).
* Elsewhere, `;` acts as a space. Each line with at least seven columns represents an image: image name or event number, projection center X, Y and Z, omega, phi and kappa. Columns from the eighth onwards and lines with fewer than seven columns are ignored.
* Reads UTF-8 if the file starts with a UTF-8 byte order mark; otherwise uses the Windows ANSI code page.

Compares the first column against each model image's file name, with or without extension, ignoring case. If multiple lines match, uses the first.

Classic file example:

```
# Image X Y Z Omega Phi Kappa
107 445210.123 4485012.456 2345.678 0.1234 -0.5678 90.1234
108 445890.321 4485020.654 2346.012 0.2345 -0.4567 90.2345
```

UltraMap file example:

```
[PARAMETERS]
EPSG_CODE;25830;5782
[Events]
# Event;X;Y;Z;Omega;Phi;Kappa
107;445210.123;4485012.456;2345.678;0.1234;-0.5678;90.1234
108;445890.321;4485020.654;2346.012;0.2345;-0.4567;90.2345
```

## Rotation units and order

[Projection center and rotations importer (.eo, .imu)](../../../../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/README.md) controls rotation interpretation:

* [Rotation units](../../../../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/unidades-de-los-giros.md): **Radians**, **Sexagesimal** or **Centesimal**. Defaults to **Sexagesimal**.
* [Order of rotations](../../../../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/orden-de-los-giros.md): rotation matrix construction order. Defaults to **Omega-Phi-Kappa**.

Both settings are read whenever a model loads.

### Images rotated by UltraMap

If the image is TIFF (`.tif` or `.tiff`), its *ImageDescription* starts with `Vexcel` or `UltraCam`, and it contains `ROTATION:` with an angle in degrees, adds that angle to kappa after converting to configured units. Applies this correction only with **Omega-Phi-Kappa** rotation order.

## Coordinate reference system

Obtains the system in this order:

1. The `.prj` with the aerial triangulation file's name (`Bronchales.prj` for `Bronchales.eo`).
2. The file's `EPSG_CODE` line, in either form:
   * `EPSG_CODE;horizontal`: horizontal system EPSG code.
   * `EPSG_CODE;horizontal;vertical`: horizontal and vertical EPSG codes. If the second code identifies an EPSG vertical system, uses their compound system without asking for the vertical system.

   Uses east, north axis order for the horizontal system. If the first code already includes a vertical component, uses it directly and ignores the second.
3. Without `.prj` or `EPSG_CODE`, or with a horizontal code absent from the EPSG database, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md#horizontal-coordinate-reference-system).

If the horizontal system lacks a vertical component and the vertical code is absent or is not a vertical system, displays [Unknown vertical coordinate system](../sistema-de-referencia-del-modelo.md#vertical-coordinate-reference-system). Saves the answer in a `.prj` beside the aerial triangulation file with the same name, leaving `.eo` or `.imu` unchanged. Since `.prj` takes priority over `EPSG_CODE`, does not ask again for that file. Existing `.prj` files are not overwritten.

Creates `.prj` only with [Ask for sensor's vertical system](../../../../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) set to **Yes**. With **No**, the dialog does not appear and the model's vertical system is unknown.

## Error messages

* “Error when opening the file: *file*”: cannot open the aerial triangulation file.
* “The orientation for the image: *image* was not located in the file: *file*”: no line matches the left or right model image.
