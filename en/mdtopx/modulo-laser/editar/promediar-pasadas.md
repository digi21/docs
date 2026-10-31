# Average flight lines
<!-- id: promediar-pasadas -->
<!-- origen: 8c9f4fa458a6d03982fc081198857314c750ff0a -->

[Edit LiDAR points](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

This tool averages spatially coincident laser points recorded from different viewpoints.

![Average flight lines dialog](../../../images/image-124.png)

Required parameters:

* **Calculation dimensions**: 2D (LiDAR) or 3D (terrestrial laser).
* **Grid step**: averaged point spacing.
* **Maximum distance**: maximum distance for neighboring terrain points, based on point density. Defines the area covered by each measurement point.
* **Distinguish by point type**
* **Calculation type**:
  * _Quality control_
  * _Calculate new values_
* **Grid point elevation**: choose:
  * _First point found_: elevation of the first point within the local area at the specified density.
  * _Arithmetic mean_: mean elevation of all local points at that density.
  * _Grid-weighted mean_: elevation weighted inversely by each point's distance to the area's center.
  * _Angle-weighted mean_: elevation weighted inversely by recorded LiDAR angle.
  * _Lowest elevation found_: lowest local point elevation.
  * _Highest elevation found_: highest local point elevation.

Available only with more than one measurement source point or flight line.

See also:

* [Filter points](/mdtopx/modulo-laser/editar/filtrar-puntos.md)
