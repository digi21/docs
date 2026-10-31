# Search intersections
<!-- id: buscar-intersecciones -->
<!-- origen: e493ac0c4830a5373c7dc02099d22b005b8fe666 -->

[Compute new vertical alignment dialog](calcular-alzado-nuevo/)

This tool calculates intersections between the horizontal alignment containing the edited vertical alignment and other alignments.

When called from [Compute new vertical alignment](calcular-alzado-nuevo/), it displays a [dialog](../generar/interseccion-de-trazados.md) for selecting other alignments to intersect.

If plan intersections are found, a dialog appears for each with:

* **Road**: intersected road's horizontal alignment name, vertical alignment name and intersection chainage.
* **Intersection point**: plan coordinates, intersected road elevation and chainage on the current alignment.
* **Operation**: operation for matching the two point elevations. Displays current road elevation and these options, available only if vertical alignment elements do not overlap:
* **Change vertex height**: moves an entire vertical curve by changing its vertex elevation until the intersection matches the second road. Available only if the intersection lies within a vertical curve.
* **Change Kv parameter**: changes the parabolic curve parameter if the intersection lies within it.
* **Move alignment**: moves the entire vertical alignment to match elevations.
* **Insert new vertex**: inserts a vertex at the specified elevation. Available only if the intersection lies outside a vertical curve.
