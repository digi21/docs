# Classify surfaces
<!-- id: clasificar-superficies -->
<!-- origen: 5def2c3daa731d2d36801757a07b247236fab2c8 -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Classifies closed entities representing surfaces by projection onto the point cloud, according to the points inside each surface. Useful for surfaces produced by raster image color segmentation, which are often oversegmented and need merging and elevation assignment, unavailable from the image alone. Projection onto a classified LiDAR cloud performs these operations.

![Classify surfaces dialog](../../../images/image-157.png)

Dialog fields:

* **Input file**: vector mapping file containing closed boundary entities.
* **Select source typologies**: source point types used to classify surfaces.
* **Maximum distance among points**: maximum neighbor distance, based on point density.
* **Select source typology**: point classification used for contour calculation.
* **Modify boundary elevation**: changes original entity elevations using _Mean elevation_, _Modal elevation_, _Maximum elevation_ or _Minimum elevation_.
* **Join areas with similar elevation**: merges surfaces sharing a side and similar elevations, with a specified elevation difference **tolerance**.
* **Change code by points**: changes each entity's code according to classifications of interior points, such as building, vegetation or ground.
* **Add slope attribute**: adds slope in degrees as an attribute, requiring the **table** value.
