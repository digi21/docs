# 2D triangulation
<!-- id: triangulacion-2d -->
<!-- origen: 83063576bd5acd09532c155d3acfe74e53ff1cc8 -->

[Generate digital model](/mdtopx/modulo-laser/obtener-modelo-digital/)

Generates a TIN digital terrain model using Delaunay triangulation. Breaklines are not supported, restricting its use to laser point file triangulation.

![2D Triangulation dialog](../../../images/image-119.png)

Required parameters:

* **Select typologies**: source point types used to calculate the digital model.
* **Max Distance**: maximum distance for neighboring terrain points, based on density. Excessively large values connect distant points and remove potential concave areas. Small values may leave gaps where point spacing exceeds the limit. At 0, point distance is ignored and model concavities are not generated.
* **Triangles code**: code used to store triangles internally.

See also:

* [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [3D triangulation](/mdtopx/modulo-laser/obtener-modelo-digital/triangulacion-3d.md)
