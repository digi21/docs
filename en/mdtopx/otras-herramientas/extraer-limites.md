# Extract boundaries
<!-- id: extraer-limites -->
<!-- origen: 7e31ccbba0a2f742751f48e8ba2bdd40383a730e -->

[Edit file](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

This tool calculates the area occupied by drawing file entities, producing one or more closed linear entities representing that area.

Required data:

* **Boundary code**: code for calculated linear entities.
* **Maximum distance among points**: maximum distance for points to be considered neighbors. Large values reduce detection of outer concavities; small values may generate many small boundaries where entities are farther apart.
* **Maximum height difference**: maximum elevation difference between neighboring points.
* **Minimum area**: minimum area to avoid small boundaries with few entities inside.
* **Boundary height**: elevation of boundary line points. Options: _Original point elevations_, _Maximum elevation found_, _Minimum elevation found_, _Mean elevation or Zero elevation_.
