# DEM document Properties pane
<!-- id: panel-propiedades-documento-dem -->
<!-- origen: 3b87a4a6779665fa619f54b8a7c30bc6949424ee -->

[Properties pane](/mdtopx/introduccion/paneles-de-la-aplicacion/panel-propiedades/)

This pane displays information about the current grid digital model:

* **Points**: number of points forming the model.
* **Cells**: number of cells forming the digital model.
* **Break lines**: number of breaklines.
* **Rows**: number of cell rows in the grid, the digital model's “height”.
* **Columns**: number of cell columns in the grid, the digital model's “width”.
* **StepX**: each cell's width in meters.
* **StepY**: each cell's height in meters.
* **Smoothing**: whether the model is smoothed. Use [Smoothing](../../../modulo-virtualand/suavizado.md) on the [VirtuaLand module](/mdtopx/modulo-virtualand/) ribbon to smooth it.
* **Variable**: whether all model cells have the same size or variable sizes to preserve breaklines.
* **Ferguson**: whether the model uses Ferguson smoothing.
* **Boundaries**: maximum and minimum coordinates bounding the digital model. For a smoothed model, maximum and minimum curvature are also shown.
* **Breakline code list**: lists the breaklines included in the model, divided into existing and nonexistent codes according to whether they are in the program's [code list](../../../otras-herramientas/lista-de-codigos/). Each code has a name and type. To remove codes from the model, select them and click X on the pane's upper toolbar. If a code is absent from the program's display code list, add it by clicking + on the same toolbar.
