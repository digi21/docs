# Grid
<!-- id: rejilla -->
<!-- origen: efc9e0b9b169672dae084ef08c2fbeab90541b32 -->

[Grid](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md)

![Grid dialog](../../../images/image-61.png)

The application generates a grid of point or linear entities projected onto the digital model. Complete these fields:

* **Grid limits**: maximum and minimum coordinates in meters of the grid's rectangular boundary.
* **Grid frequency**: X and Y point increments, in meters.
* **Entity code**: code for recording grid entities.
* **Entity type**: Points or Lines. Points records a point at every X and Y coordinate increment. Lines records horizontal and/or vertical lines at every X and Y increment.
* **Store points in lines**: when Entity type is Points, stores them as line vertices. This looks similar to a grid of linear entities, but vertices occur only at row and column intersections. Linear entities instead have vertices at every intersection with digital model triangles.
* **Line configuration**: when Entity type is Lines, configure them through this [dialog](configuracion-de-las-lineas-de-la-rejilla.md).

Requires an active triangulated digital model document.
