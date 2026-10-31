# Delete TIN vertices
<!-- id: borra-vertices-del-tin -->
<!-- origen: 20b396826b460d05a7e9e541010e48fddb680338 -->

[TIN edition tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/)

This group contains tools for deleting points from a TIN digital model. When points are deleted, the program retriangulates the area to generate new surface information. To avoid generating a new surface definition, delete triangles instead, leaving a gap. Those tools are described in [Delete TIN triangles](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/borrar-triangulos-del-tin.md).

The following point deletion tools are available:

* [**Delete by slope**](../../herramientas-de-edicion-de-la-triangulacion/borrar-puntos-por-pendiente.md): deletes triangulation points according to the slope of their triangles, removing points with slopes that are too high or too low. Useful for deleting erroneous model points produced by automatic photogrammetric correlation.
* [**Delete by height**](../../herramientas-de-edicion-de-la-triangulacion/borrar-puntos-por-altitudes.md): deletes triangulation points according to their elevation.
* **Delete vertex**: deletes triangulation vertices selected graphically with the mouse. The application recalculates the triangulation without the selected point in real time. To delete points:
  * Select the tool.
  * Left-click the point to delete.
  * If the desired point is selected, left-click again to delete it and retriangulate the model.
  * If the selected point is incorrect, right-click to cancel the selection.
* **Delete vertex by fence**: deletes triangulation vertices selected with a fence. Define its vertices with the left mouse button and finish with the right button. All points inside the fence are selected. Left-click to confirm deletion or right-click to cancel. The application recalculates the triangulation without the selected points in real time.
