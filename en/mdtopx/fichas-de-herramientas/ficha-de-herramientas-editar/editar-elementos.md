# Elements
<!-- id: editar-elementos -->
<!-- origen: 048c125cc462761bce35998ecd67dcb516b957f7 -->

[Edit tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-editar/)

This group contains commands for editing active document elements:

* **Information**: displays information about a selected [drawing element](../../otras-herramientas/editar-elementos/informacion-de-linea.md) or [triangle](../../otras-herramientas/editar-elementos/informacion-de-triangulo.md). Select and accept with the left mouse button. Right-click to deselect or search for another element at the same location. \[ESC] also deselects.
* **Measure**: measures distances between points selected on screen. Coordinate increments appear in the [status bar](../../introduccion/barra-de-estado.md). Select points with the left mouse button and finish with the right. The total distance appears in the [Output pane](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). Options are:
  * _Measure_: measures a multipoint polyline, displaying both 2D and 3D distances.
  * _Measure 2 points in 3D_: measures two points in 3D, both selected with the left mouse button.
  * _Measure 2 points in XY_: measures two points in 2D, both selected with the left mouse button.
  * _Measure 2 points in Z_: measures the elevation difference between two points selected with the left mouse button.
* **Delete**: deletes drawing elements or triangles. In a digital model document, drag with the left mouse button along a straight line to select multiple triangles; every triangle crossed is deleted. After selecting elements, click the left button again to delete, or reject selection with the right button or \[ESC]. \[DELETE] also selects this tool. Options are:
  * _Entities_: deletes drawing elements or triangles.
  * _Delete links_: deletes drawing element attributes, available for inspection in the [line information dialog](../../otras-herramientas/editar-elementos/informacion-de-linea.md).
* **Select**: opens graphical selection options. A new selection replaces the current selection unless you hold Shift. Options are:
  * _Rectangular window_: selects elements using a rectangle defined by a diagonal.
  * _Select by circle_: selects elements using a circle defined by its center and radius.
  * _Define fence to select_: selects elements using a closed entity defined by vertices. Left-click to enter vertices and right-click to finish.

  In a digital model, all three windows select points when points are displayed and triangles otherwise. Selection uses the current screen view, including its rotation. With [Selection view](../ficha-de-herramientas-edicion-tin/vista-tin.md), only visible elements are selected.
  * [_Select within box..._](../../otras-herramientas/editar-elementos/seleccionar-segun-coordenadas.md): selects by entity coordinates.
  * [_By properties..._](../../otras-herramientas/editar-elementos/seleccionar-segun-propiedades.md): selects by entity properties.
  * _Load fences from file..._: selects elements inside closed entities stored in a vector geometry file. Windows file selection opens to choose the source document.
  * _Select all_: selects every entity in the document.
  * _Invert selection_: selects previously unselected elements and deselects previously selected ones.
* [**Change code**](../../otras-herramientas/editar-elementos/cambia-codigo.md): replaces one drawing code with another in bulk. Available only for digital model or drawing documents.
* [**Select code**](../../otras-herramientas/editar-elementos/seleccionar-codigo.md): creates a new drawing document with entities of the selected codes.
* **Join**: provides three options:
  * _Join all_: joins drawing entities connected at their endpoints into a single continuous entity. Available only for drawings. To join two entities:
    * Both must have the same code.
    * They must share at least one endpoint.
    * No other entity may share the joining endpoint.
  * _Join_: lets you select connected drawing entities to join into one continuous entity. Available only for drawings, with the same requirements as automatic joining throughout the file.
  * [_Join nearest_](../../otras-herramientas/editar-elementos/juntar-entidades-cercanas.md): joins entities according to endpoint proximity.
* **Surfaces**: provides five tools for closed polygonal entities or surfaces:
  * _Join surfaces_: joins every overlapping surface.
  * _Join selected surfaces_: joins surfaces selected with the left mouse button.
  * _Subtract surfaces_: removes the area occupied by another surface. Select the surface to subtract from first, then the overlapping surface.
  * _Common surface area_: calculates the overlap between two surfaces.
  * _Find islands_: codes surfaces as islands or non-islands. Islands are surfaces entirely contained within others and receive _LIMINT_; the remainder receive _LIMEXT_.
* [**Generalize**](../../otras-herramientas/editar-elementos/generalizar-entidades.md): generalizes drawing entities linearly or by area, removing points unnecessary to define their geometry at a given scale. Available only for drawings.
* [**Smoothing**](../../otras-herramientas/editar-elementos/suavizado-de-entidades.md): smooths linear entity geometry, improving excessively angular sections.
* **Edit line**: edits a linear entity graphically. Select the line with the left mouse button. Once highlighted, left-click the point to edit, then drag it with the left button. Delete a selected point with \[DELETE]. Insert new points at the current mouse position with \[INSERT]. Right-click or press \[ESC] to finish editing.
* **Move line**: moves an entity graphically. Select it with the left mouse button, then drag the highlighted entity with that button. Right-click or press \[ESC] to finish editing.
* [**Parallel**](../../otras-herramientas/editar-elementos/paralela.md): generates entities parallel to a line.
* **Extend**: extends a polyline's first or last segment to intersect another line. Select the boundary entity first, then the entity to extend.
* **Fit a line**: calculates the straight line best fitting a point set.
* [**Delete gaps**](../../otras-herramientas/editar-elementos/borrar-huecos.md): removes convexities or concavities from a linear entity.
* **Trim**: subdivides linear entities at their intersections.

Additional commands are not displayed, but can be added to the [Quick Access Toolbar](../../cinta-de-herramientas/barra-de-herramientas-de-acceso-rapido.md) or invoked with [keyboard shortcuts](../../introduccion/teclas-rapidas.md):

* **Undo**: reverses the latest change to the current document. Shortcut: \[CTRL]+\[Z].
* **Redo**: reapplies the latest undone operation. Shortcut: \[CTRL]+\[Y].
