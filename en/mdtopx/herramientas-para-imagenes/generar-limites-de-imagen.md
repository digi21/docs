# Generate image boundaries
<!-- id: generar-limites-de-imagen -->
<!-- origen: 6f2335c7ea3180dedb57752d4852cde45eacca36 -->

[Compute](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/imagen-calcular.md)

This tool calculates an image's outer boundary from its white pixels. The result is a vector drawing document with the boundary in ground coordinates. The command displays a dialog with these fields:

* **Gap distance**: number of pixels for considering a concavity in the boundary.
* **Boundary code**: code used to record the linear entity.
* **Cross margin**: for a perspective image, percentage to crop across the direction of capture.
* **Longitudinal margin**: for a perspective image, percentage to crop along the flight direction.

This tool can also run with an active project. A dialog then lets you choose the images whose boundaries will be calculated.
