# Filter points
<!-- id: filtrar-puntos -->
<!-- origen: e390e9059d9588493d0b829d6f4d398f74d17978 -->

[Edit LiDAR points](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

This tool filters laser points, reducing initial density and file size.

![Filter points dialog](../../../images/image-123.png)

Required parameters:

* **Calculation dimensions**: 2D (LiDAR) or 3D (terrestrial laser).
* **Grid step**: filtered point spacing.
* **Grid point elevation**: choose:
  * _First point found_: elevation of the first point within the local area at the specified density.
  * _Arithmetic mean_: mean elevation of all local points at that density.
  * _Grid-weighted mean_: elevation weighted inversely by each point's distance to the area's center.
  * _Angle-weighted mean_: elevation weighted inversely by recorded LiDAR angle.
  * _Lowest elevation found_: lowest local point elevation.
  * _Highest elevation found_: highest local point elevation.

See also:

* [Average flight lines](/mdtopx/modulo-laser/editar/promediar-pasadas.md)
