# Edit image orientation
<!-- id: editar-orientacion-de-imagen -->
<!-- origen: 17300a44cbf2b425b71b24cc537f2a0a53dc3142 -->

[Orientation](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/orientacion.md)

This tool edits an image's georeferencing parameters. Parameters differ for orthogonal and perspective orientation.

For an orthogonally oriented image, the dialog displays:

* **Pixel size**: pixel size in ground coordinates.
* **Left top corner X**: upper-left image corner X coordinate in ground coordinates.
* **Left top corner Y**: upper-left image corner Y coordinate in ground coordinates.

For a perspective image, the dialog displays:

* Interior orientation:
  * **Focal length**: principal distance in millimeters.
  * **Pixel size**: pixel size in microns.
  * **Principal Point X**: principal point X position in millimeters.
  * **Principal Point Y**: principal point Y position in millimeters.
* Exterior orientation:
  * **Omega**: angle about the X axis, in degrees.
  * **Phi**: angle about the Y axis, in degrees.
  * **Kappa**: angle about the Z axis, in degrees.
  * **Projection centre X**: projection center X coordinate in ground coordinates.
  * **Projection centre Y**: projection center Y coordinate in ground coordinates.
  * **Projection centre Z**: projection center Z coordinate in ground coordinates.
* **Ground height**: mean terrain elevation in ground coordinates.

For a 360-degree image, the dialog displays:

* Interior orientation:
  * **Principal Point X**: principal point X position in millimeters.
  * **Principal Point Y**: principal point Y position in millimeters.
* Exterior orientation:
  * **Omega**: angle about the X axis, in degrees.
  * **Phi**: angle about the Y axis, in degrees.
  * **Kappa**: angle about the Z axis, in degrees.
  * **Projection centre X**: projection center X coordinate in ground coordinates.
  * **Projection centre Y**: projection center Y coordinate in ground coordinates.
  * **Projection centre Z**: projection center Z coordinate in ground coordinates.

![360-degree image orientation example](../../images/image-9.png)

After georeferencing and saving the image to disk, an ASCII file with georeferencing parameters is generated. Its type depends on the image:

* Perspective or spherical images: ORI extension.
* Orthogonal images: ORT extension. Depending on the output image format:
  * TIF also stores orientation parameters in the image file header and generates a TFW file for loading in third-party applications.
  * JPEG generates a JPW file for loading in third-party applications.

Example ORI file for spherical image orientation:

```ini
[Orientacion]
Modo=Externa
[Externa]
m0=-0.9789410669 -0.2038119630 0.0116220129
m1=-0.2038836663 0.9789805160 -0.0053478801
m2=-0.0102877623 -0.0076047981 -0.9999181611
CentroProyeccion=596407.3353 3125647.8420 82.5872
ZMedia=0.0000
Alcance=0.0000
GPSTime=1299842066.4444465637
ID=2793
TipoOrienta=3
TipoAngulosEsferica=0
CorregirGeodesia=1
MinAltura=0.0000
MaxAltura=180.0000
```

Example ORT file for orthogonal image orientation:

```ini
[ort]
Pixel=0.366396
X=446217.550000
Y=4471383.140000
Z=0.000000
EscalaZ=1.000000
```

Example TFW file for the same orthogonal image orientation:

```ini
0.366396
0.000
0.000
-0.366396
446217.550000
4471383.140000
```

See also:

* [Orientation by measuring points](orientacion-midiendo-puntos.md)
* [Edit image orientations from a file](/mdtopx/herramientas-para-imagenes/editar-orientacion-de-imagenes-desde-archivo.md)
