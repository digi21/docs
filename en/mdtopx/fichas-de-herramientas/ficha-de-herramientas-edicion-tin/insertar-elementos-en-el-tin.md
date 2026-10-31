# Insert elements in TIN
<!-- id: insertar-elementos-en-el-tin -->
<!-- origen: caecf309318be579847290718ff1e2acc422dab7 -->

[TIN edition tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/)

This group contains the following tools for inserting elements into a TIN digital model:

* [**New point**](../../herramientas-de-edicion-de-la-triangulacion/insertar-nuevo-punto-en-mdt.md): inserts a new triangulation vertex by left-clicking the triangulation. The application displays a dialog with XY coordinates and an interpolated Z. You can change them; once insertion is accepted, the program calculates the new triangulation including the point in real time. Select this tool with the \[INS] key.
* **New breakline**: inserts breaklines onto the triangulation. Left-click the points defining the new breakline. Press \[Backspace] to remove an unwanted vertex from its definition. Right-click to finish; a [dialog](../../otras-herramientas/editar-elementos/informacion-de-linea.md) displays the selected vertex coordinates and lets you specify the breakline code. The breakline vertices must belong to the digital model.
* **Points in flat areas**: inserts points in areas where points on the same contour may have been joined, usually because a slope breakline is missing. A dialog requests the contour interval, then the program finds any resulting flat areas. It calculates the most likely terrain trend in those areas to deduce the best elevation for an interior point that avoids this problem.
* **Insert entities**: inserts new entities into the current digital model, generating a new triangulation incorporating points and/or lines. The command opens Windows Explorer to select a vector drawing file containing the entities to insert into the DTM.
