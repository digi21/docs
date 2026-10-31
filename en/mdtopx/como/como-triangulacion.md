# Triangulation
<!-- id: como-triangulacion -->
<!-- origen: a73d05ed2a48b1f77c457df6a0a7283d740fd010 -->

[DTM tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-mdt/)

Triangulation relates digitally captured geographic entities. It is based on the mathematical principle of Delaunay triangulation or Thiessen polygons: triangles generated from the available points by this algorithm are as equilateral as possible and are the same regardless of the calculation's starting point.

The algorithm establishes reciprocal neighboring relationships between points, generating the triangles.

To keep triangulation faithful to the original terrain, the algorithm considers breaklines: lines defining changes in terrain slope. No triangle can cross them; they must form edges of triangles in the final digital model.

An accurate digital model therefore requires both well-distributed terrain elevation data and well-defined terrain breaklines. These can be ridgelines, drainage lines, tracks, roads, slopes, etc.

Triangulate uses this algorithm. Run it by:

* Clicking Triangulate on the [DTM tools](/mdtopx/herramientas-mdt/) tab.
* Pressing \[CTRL] + \[T].

A [dialog](../herramientas-mdt/triangulacion.md) requests triangulation options. Click OK to calculate the triangulation and display the digital terrain model in a new document. Save it as MDTopX, DIGI, DXF, DGN or Shape. MDTopX format preserves triangles for calculations in a later session. DIGI or DGN stores only a drawing containing closed four-point entities; DXF stores triangles as 3DFACE entities. Formats other than MDTopX lose the properties needed for later digital model calculations, leaving only drawings.

This tool also runs from the [command line](../desde-linea-de-comando/linea-de-comando-triangulacion.md).
