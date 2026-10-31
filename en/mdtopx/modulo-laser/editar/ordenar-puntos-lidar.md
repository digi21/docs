# Sort LiDAR points
<!-- id: ordenar-puntos-lidar -->
<!-- origen: 43ab65249ede2d5575adfd5f96bc0c00a64f81c2 -->

[Edit LiDAR points](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

Sorts LiDAR points by a property, usually recorded GPS time, or X or Y when GPS time is absent. Each point set usually represents an airborne sensor flight line, or terrestrial scanner stations or different sensors on an MMS system.

![Sort LiDAR points dialog](../../../images/image-128.png)

Required parameters:

* **Sort without GPS time**: sorts points even without GPS time, using a plan coordinate instead.
* **Join different sets if consecutive**: joins disjoint point sets detected as potentially continuous from their GPS time difference.
* **Separate into different sets at gaps**: splits sets at significant GPS time gaps caused by joined distinct point sets.
* **Delete duplicate points**: removes points sharing XYZ coordinates.
* **Point cloud from MMS**: enable for a terrestrial MMS cloud.
