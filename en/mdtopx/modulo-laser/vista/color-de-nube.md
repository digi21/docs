# Cloud color
<!-- id: color-de-nube -->
<!-- origen: c9b9148e51fc1011ebad8638486d1d7644d6cb29 -->

[Laser point view](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/vista-de-puntos-laser.md)

This list chooses how to display the point cloud. Available options depend on its properties.

![Point cloud display options](../../../images/image-11.png)

Options:

* **One color**: all points use the same color, set with **Point color** in this list.
* **By intensity**: colors points by intensity recorded by the laser device.
* **By echo**: colors points by recorded LiDAR return. Set each return's color in the [Echo list](lista-de-ecos.md). Useful only with multiple echoes or returns, common in airborne LiDAR.
* **By classification**: colors points by assigned LiDAR classification. Set colors in the [Classification list](lista-de-clasificaciones.md).
* **By height**: colors points by elevation or Z coordinate. A [dialog](../../otras-herramientas/seleccionar-gama-de-color.md) specifies the color range.
* **By source point**: colors points by measurement origin, identifying flight lines in airborne LiDAR or scanner stations in terrestrial LiDAR.
* **Point color**: color used when **One color** is selected.
