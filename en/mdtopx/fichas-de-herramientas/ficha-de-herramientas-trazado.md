# Horizontal tab
<!-- id: ficha-de-herramientas-trazado -->
<!-- origen: 22b4a4b8583fcc1a5c8490ccb8e60fab61b38911 -->

[Ribbon](/mdtopx/cinta-de-herramientas/)

![Horizontal ribbon](../../images/ficha-de-herramientas-trazado.jpg)

This tab groups the main tools for entering road alignments (horizontal design). The current road document's Horizontal view must be active for it to appear. Its appearance is shown above.

The following commands are available:

* **New alignment**: creates a new alignment. Left-click the points defining the new alignment's straight sections. Right-click to finish. The program displays a [dialog](../modulo-viales/trazado/informacion-del-trazado.md) with the recorded points and other characteristics of the new road.
* **New by coordinates**: creates a new alignment like the previous option, but opens the [dialog](../modulo-viales/trazado/informacion-del-trazado.md) directly to add points with known coordinates.
* [**Edit alignment**](../modulo-viales/trazado/editar-un-trazado.md): edits an alignment by selecting its points in the drawing window.
* **Join alignments**:
* **Copy alignment**: copies an existing alignment. Left-click the alignment to copy. If the desired alignment is selected, left-click again to confirm. Otherwise, right-click to keep searching at the same location until it is found. Once accepted, the program displays the alignment information [dialog](../modulo-viales/trazado/informacion-del-trazado.md).
* **Move alignment**: moves an existing alignment. Left-click the alignment to copy. Once the desired alignment is selected, drag it to the new location while holding the left mouse button. If the desired alignment is not selected, right-click to keep searching at the same location until it is found.
* **Move by coordinates**: moves an existing alignment by entering its displacement with the keyboard. Left-click the alignment to copy. Once it is selected, the program displays a dialog for specifying the X and Y displacement. If the desired alignment is not selected, right-click to keep searching at the same location until it is found.
* [**Find geometry**](../modulo-viales/trazado/buscar-geometria.md): calculates the geometry in a polyline, finding curved sections with their corresponding radii and tangents.
* **Insert curve**: inserts a curved element between two straight elements. Left-click near the point that will act as a vertex. A [dialog](../modulo-viales/trazado/insertar-elemento-curvo.md) appears for changing the new element's characteristics.
* **Tangent 3 lines**: inserts a curved element in a sequence of three straight elements, tangent to all three. Left-click the middle straight element.
* **Edit curve**: changes an existing curved element. Left-click the curved element to edit; the program displays a [dialog](../modulo-viales/trazado/insertar-elemento-curvo.md) with its characteristics.
* **Add vertex to the final**: adds new alignment vertices at either end. Left-click the alignment to change. If the desired alignment is not selected, right-click to search for others at the same location. Left-click again to confirm. Then enter vertices, which are added at the nearest end. Right-click to finish entering vertices; a [dialog](../modulo-viales/trazado/insertar-elemento-curvo.md) displays the alignment's characteristics. Press \[ESC] during editing to cancel.
* **Add vertex inside**: adds new vertices within the alignment. Left-click the alignment to change. If the desired alignment is not selected, right-click to search for others at the same location. Left-click again to confirm. Then enter vertices near the alignment.
* **Roundabout**: creates closed circular alignments such as those used for roundabouts. Once created, the program displays a [dialog](../modulo-viales/trazado/glorietas.md). The following options are available:
  * _3 points_: creates a roundabout by specifying three points on its alignment.
  * _Center and point_: creates a roundabout by specifying its center and a point on its alignment.
  * _Center and radius_: creates a roundabout by specifying its center, then its radius.
  * _2 points and radius_: creates a roundabout by specifying two points on its alignment, then its radius.
