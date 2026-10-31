# Generate image
<!-- id: generar-imagen -->
<!-- origen: 0ef2353b6312002edab71f1b288608cbc7bd30e2 -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Generates a georeferenced raster document whose pixels represent a LiDAR point parameter.

![Generate image dialog](../../../images/image-156.png)

Dialog fields:

* **Select source typologies**: point types used to generate the image.
* **Maximum distance among points**: maximum neighbor distance, based on point density.
* **Pixel size**: pixel size in meters for the raster slope map. Larger pixels lower output quality. Match it to point spacing: smaller pixels are interpolated from surrounding points; larger pixels smooth the output image.
* **Calculation type**: point property represented in the output:
  * _Elevation_: elevation, using a hypsometric color range selected in a [dialog](../../otras-herramientas/seleccionar-gama-de-color.md).
  * _RGB color_: stored point color, producing a georeferenced pseudo-orthophoto.
  * _Intensity_: recorded intensity, producing a georeferenced pseudo-panchromatic image.
  * _Classification_: assigned LiDAR classification, using document display colors.
  * _Source point_: measurement origin, using document display colors.
  * _Echo_: laser return when measuring each point, using document display colors.
