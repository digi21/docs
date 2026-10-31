# Projection onto the point cloud
<!-- id: proyeccion-sobre-la-nube-de-puntos -->
<!-- origen: 6aebbcf6e9fdc5a68348e42a416a212be1b8e983 -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

![Projection onto the point cloud dialog](../../../images/image-150.png)

Projects a vector file onto the point cloud, assigning elevations from the projection.

Required parameters:

* **Input**: file containing entities to project. The button to the right opens Windows Explorer. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN, ESRI Shape or ASCII. Files can contain multiple entities except ASCII, which reads only one as a line.
* **Output**:
  * _Entities height_: Z stored in each entity vertex:
    * _DTM height_: elevation directly from the point cloud.
    * _Difference height_: difference between the stored file value and its cloud projection, useful for locating entity elevation errors.
  * _Entities code_: recording code or layer:
    * _Original_: retains the original entity code.
    * _Difference_: code based on elevation difference, the preceding parameter's second option. Specify the [code-to-elevation-difference relationship](../../herramientas-mdt/proyeccion-sobre-mdt/codigos-segun-diferencia-de-cota.md) with the button to the right.
* **Select source typology**: LiDAR point types used for projection.
* **Only in the selection**: processes only currently selected points.
* **Max distance among points**: maximum neighbor distance, based on point density.
