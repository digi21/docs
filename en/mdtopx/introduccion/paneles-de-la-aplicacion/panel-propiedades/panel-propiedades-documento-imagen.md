# Image document Properties pane
<!-- id: panel-propiedades-documento-imagen -->
<!-- origen: c1210818b5a9bd1d4e0451ef62706f72317d1e76 -->

[Properties pane](/mdtopx/introduccion/paneles-de-la-aplicacion/panel-propiedades/)

This pane displays information about the current image:

* **Rows**: number of image pixel rows, the image's “height”.
* **Columns**: number of image pixel columns, the image's “width”.
* **Bits sample**: image color depth, the number of bytes per pixel.
* **Georref.**: image georeferencing type. Change georeferencing values with [Edit orientation](../../../herramientas-para-imagenes/editar-orientacion-de-imagen.md) on the [Image tools](../../../fichas-de-herramientas/ficha-de-herramientas-imagen/) ribbon. Possible values are:
  * _No_: no orientation. Image boundaries show the numbers of rows and columns.
  * _Orthogonal_: orthogonal orientation. Image boundaries show the coordinates covered.
  * _Conical_: perspective orientation. Orientation parameters are displayed below instead of image boundaries.
  * _Panoramic_: a spherical image.
* **Boundaries**: maximum and minimum coordinates bounding the image.
* **Orientation parameters**: for perspective orientation, the defining parameters are:
  * _Pixel_: pixel size in microns.
  * _Focal_: principal distance in millimeters.
  * _PP X and PP Y_: principal point position in millimeters.
  * _Omega, Phi, Kappa_: image orientation angles.
  * X PC, Y PC and Z PC: coordinates of the projection center where the image was taken.
  * _Average Z_: average terrain elevation.
