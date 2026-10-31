# Set RGB color to points
<!-- id: asignar-color-rgb-a-puntos -->
<!-- origen: d06484878e938388c25e787c55af81ea3ddbb2e6 -->

[Edit LiDAR points](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

This tool adds RGB color to each point from an external georeferenced image, either an orthophoto or a perspective image with its exterior orientation file. Useful when the laser recorded no color, adding information to improve cloud editing.

![Set RGB colour to points dialog](../../../images/image-126.png)

Required parameters:

* **Image file**: raster image supplying RGB values. It must be georeferenced with an external ORT, ORI or TFW file and can be an orthophoto or an image directly from a perspective sensor. If orientation is unavailable, calculate it with MDTopX's [Orientation by measuring points](../../herramientas-para-imagenes/orientacion-midiendo-puntos.md). Supported formats: BMP, TIFF or JPEG. The button to the right opens Windows Explorer to locate it.
* **Only in the selection**: processes only currently selected points.
* **Interpolation**: assigns colors from nearby pixels:
  * _Nearest neighbor_: nearest pixel value.
  * _Bilinear_: four nearest points.
  * _Bicubic_: nine nearest points.

See also:

* [By registered color](/mdtopx/modulo-laser/segun-color-registrado/)
* [Cloud color](/mdtopx/modulo-laser/vista/color-de-nube.md)
* [Find points by geometry plus RGB](../buscar-puntos/buscar-puntos-segun-geometria-mas-rgb.md)
