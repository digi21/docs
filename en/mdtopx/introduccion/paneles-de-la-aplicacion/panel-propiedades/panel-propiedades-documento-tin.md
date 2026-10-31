# TIN document Properties pane
<!-- id: panel-propiedades-documento-tin -->
<!-- origen: 76cd7a8af0f3b573b91f92b5c32aa09e28352306 -->

[Properties pane](/mdtopx/introduccion/paneles-de-la-aplicacion/panel-propiedades/)

This pane displays information about the current digital model:

* **Points**: number of points forming the model, the triangle vertices.
* **Triangles**: number of triangles forming the model. There are approximately twice as many triangles as points.
* **Break lines**: number of breaklines. Each breakline also forms a triangle edge.
* **Erased**: number of deleted points. Use Compress on the [Edit tools](../../../fichas-de-herramientas/ficha-de-herramientas-editar/) ribbon to remove this information completely.
* **Boundaries**: maximum and minimum coordinates bounding the digital model.
* **Breakline code list**: lists the breaklines included in the digital model, divided into existing and nonexistent codes according to whether they are in the program's [code list](../../../otras-herramientas/lista-de-codigos/). Each code has a name and type. Removing a code from the model removes the breakline property from triangle edges with that code. Select the codes and click X on the pane's upper toolbar. If a code is absent from the program's display code list, add it by clicking + on the same toolbar.
