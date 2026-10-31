# Classification list
<!-- id: lista-de-clasificaciones -->
<!-- origen: e5057aeb2cacdb3d25968aa442db3d466097d0f4 -->

[Laser point view](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/vista-de-puntos-laser.md)

Classification identifies the type of element reflecting the laser ray, such as asphalt, vegetation or a road sign. Added during analysis rather than recorded by the LiDAR system, correct classification allows models of individual objects to be obtained by grouping points with selected values.

Some values are conventionally reserved according to the original ASPRS LAS format definition, for example:

* 0: Created or never classified
* 1: Unclassified
* 2: Ground
* 3: Low vegetation
* 4: Medium vegetation
* 5: High vegetation
* 6: Building
* 7: Low point (noise)
* 8: Model key-point
* 9: Water
* 10: Reserved
* 11: Reserved
* 12: Overlap point

Remaining classifications through 255 are available for custom use according to project requirements.

Initially, the entire cloud has classification 0.

Manual classification by selecting and changing points on screen is possible but impractical for projects with billions of points.

![Classification list dialog](../../../images/image-10.png)

This dialog lists classifications used to draw LiDAR points on screen, with configurable thickness and color.

Use **Save...** to save the list as ASCII or **Load...** to load a file.

**Edit...** or double-click a type to open its characteristics [dialog](../../otras-herramientas/lista-de-codigos/codigo-nuevo.md).

Changes take effect only when you click **OK** to exit.
