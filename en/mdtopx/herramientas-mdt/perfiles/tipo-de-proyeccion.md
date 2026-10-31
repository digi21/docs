# Projection type
<!-- id: tipo-de-proyeccion -->
<!-- origen: b9fa9bae6a668edabfad2b011de69d6a289a58e8 -->

![Type of projection over DTM dialog](../../../images/image-54.png)

Complete these fields:

* **Point interpolation**: **Interpolation with cuts** or **Individual projection**. With intersection interpolation, entity points are not projected directly onto the digital model. Individual projection ignores interpolation from intersections. The former is useful for smoothing line projections onto digital models formed from contours: choose intersections with breaklines, in this case contours, to interpolate the remaining line vertices from those intersections, fitting the entity precisely to the contours.
* **Cuts when projecting lines**: intersects breaklines, all triangles, or uses no intersections, projecting only points. Each intersection with the specified entities creates a new line vertex. Using no intersections is faster but does not fit the line precisely to the digital model because it rests on the model only at its vertices.
