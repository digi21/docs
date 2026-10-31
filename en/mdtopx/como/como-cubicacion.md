# Volume calculation
<!-- id: como-cubicacion -->
<!-- origen: a747a3cbfdd92298c0bd037e0300712a1fa62189 -->

[DTM tools Civil products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

Volumes are calculated between two digital models of the same area under different conditions or at different times, for example before and after excavation. The digital models must already be calculated, and a file must contain a closed line delimiting the volume calculation area.

The active document is used as the original terrain model and must be in MDT format. The later terrain model must be stored in a file.

You can project profiles onto the volume calculation. Enable the checkbox and select a previously saved file containing profile lines, or have the program calculate horizontal or vertical profiles automatically.

Run the tool by:

* Clicking Volumes on the [DTM tools](/mdtopx/herramientas-mdt/) tab.
* Pressing \[CTRL] + \[B].

A [dialog](../herramientas-mdt/cubicacion/) requests triangulation options. Click OK to calculate volumes and generate:

* With triangle intersection calculation, a file containing the volume calculation and areas colored by cut or fill. This digital model document consists of triangles whose elevations are the differences between the two models. Surface colors are:
  * Green for cut.
  * Red for fill.
  * Blue for unchanged areas.

The colored view can later be saved as a [raster image](../herramientas-de-edicion-de-la-triangulacion/imagen-cubicacion.md).

* With Grid calculation, a drawing file containing grid points where points were projected. Their codes are TERRAPLEN for fill, DESMONTE for cut and NADA when both digital models have the same elevation.
* If profile generation is selected, two additional drawing documents contain profiles projected onto both digital models in plan and elevation views.
* If Report file is selected, an ASCII file contains volume results for every generated prism and the totals.

This tool also runs from the [command line](../desde-linea-de-comando/linea-de-comando-cubicacion.md).

See [Example 3: Earthwork calculation](/mdtopx/ejemplos/ejemplo3.md) for an example.
