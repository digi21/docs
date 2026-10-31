# Split in elements
<!-- id: divide-en-elementos -->
<!-- origen: 0b559b33733a87777165dfcb118cbffe3c8495dc -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Classifies a terrestrial point cloud by measured objects, assigning different types to identified objects.

![Split in elements dialog](../../../images/image-155.png)

Required parameters:

* **Source point**: measurement origins to classify.
* **Only in the selection**: processes only currently selected points.
* **Tolerance**: ground coordinate separation above which consecutive points are not considered part of the same object.
* **Max distance**: maximum distance between recorded points.
* **Generate surfaces**: automatically generates surfaces from points belonging to the same object.
* **Generate TIN model**: automatically generates a TIN model for each identified object.
