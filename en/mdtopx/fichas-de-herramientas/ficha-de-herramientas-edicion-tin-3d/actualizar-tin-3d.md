# Update 3D TIN
<!-- id: actualizar-tin-3d -->
<!-- origen: 8abe4d38fc8bac11ac427cf405a4d48b65f391f0 -->

[3D TIN edition tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/)

This group contains the following 3D TIN document display tools:

* **Show triangles**: selects the maximum size of displayed triangles. All tetrahedra calculated from model points are stored internally, but only those below a certain size should be displayed, according to the density recorded by the scanner. The same dialog lets you choose whether to display triangle vertices.
* [**Gap-free surface**](../../herramientas-de-edicion-de-la-triangulacion/rellenar-huecos-3d.md#gap-free-surface): creates a new digital model containing the surface of the model's points calculated by advancing front, using the **Show triangles** distance as the maximum side length and filling gaps up to the specified diameter.
