# Contours from LiDAR
<!-- id: curvado-a-partir-de-lidar -->
<!-- origen: 1a7501ae5d1cd7a49acbced528e47be550a0f13b -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Generates [contours](../../como/como-curvado.md) directly from a point cloud file.

![Generate contours from a point cloud dialog](../../../images/image-26.png)

Required parameters:

* **Maximum distance among points**: maximum neighbor distance, based on point density.
* **Filter point cloud**: when disabled, generates a [TIN](../../como/como-triangulacion.md) and contours it. When enabled, first [filters](../editar/filtrar-puntos.md) selected points using:
  * _Grid step_
  * _Point height_
* [**Configure contours**](../../herramientas-mdt/curvado/): resulting contour settings.
* **Select source typology**: point classification used for contour calculation.
* **Only in the selection**: processes only currently selected points.
* **Classify points**: assigns a selected **target type** to points inside a contour not exceeding a specified **minimum area**. Useful for points missed by earlier processes that may not belong to ground, such as low vegetation.
