# Delete peaks
<!-- id: borrar-picos -->
<!-- origen: 759e0c31c9fc4d4470f73226178e4f0f591c3527 -->

[Edit LiDAR points](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

Finds and classifies points higher than their surroundings. Including them in a DTM would produce spikes due to their elevation differences.

![Delete peaks dialog](../../../images/image-127.png)

Required parameters:

* **Maximum distance**: maximum distance for neighboring terrain points, based on point density. Defines the area covered by each measurement point.
* **Minimum elevation height**: minimum elevation difference between a point and its surroundings.
* **Source types**: point types used in calculation.
* **Target types**: type assigned to detected points.
* **Only in the selection**: processes only currently selected points.
* **Iterate while more than x points are classified**: repeats while the classified count exceeds this value.
