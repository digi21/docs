# Compute plane
<!-- id: calcular-plano -->
<!-- origen: 5a803babc26110a47c1f3327ac671673fd2d83a2 -->

[Coordinate transformation](/mdtopx/otras-herramientas/transformacion-de-coordenadas.md)

This floating dialog manages points defining a plane. It remains open while you left-click points in the current document. As points are added, the program calculates their plane in real time. At least three points are required; additional points allow residual calculation to help choose the best points. Use points near the area's outer edges to avoid extrapolation, and avoid collinear points for an accurate calculation.

Fields and tools:

* **Remeasure**: remeasures a point with an excessive residual.
* **Delete**: removes a point unsuitable for plane calculation.
* **Load...**: loads a file of plane definition points.
* **Parameters**: calculated plane parameters: the three surface normal vector components and their standard deviations.

Accepting the calculated plane opens a [dialog](resultados-de-plano-calculado.md) with final results to edit, accept or reject.
