# Extract LiDAR boundaries
<!-- id: extraer-limites-lidar -->
<!-- origen: 51b6e57c1290eaba9e083fa8e4e1fbd840aca23f -->

[Edit file](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

This tool calculates the area occupied by points of a particular LiDAR type, producing one or more closed linear entities representing that area.

Required data:

* **External boundary code**: code for calculated linear entities.
* **Maximum distance among points**: maximum distance for points to be considered neighbors. Large values reduce detection of outer concavities; small values may generate many small boundaries where points are farther apart.
* **Maximum height difference**: maximum elevation difference between neighboring points.
* **Minimum area**: minimum area to avoid small boundaries with few entities inside.
* **Boundary height**: elevation of boundary line points. Options: Original point elevations, Maximum elevation found, Minimum elevation found, Mean elevation or Zero elevation.
* **Select source type**: one or more point types for calculating boundaries.
