# Shading
<!-- id: como-sombreado -->
<!-- origen: f93c13ff73cf4c1ff2c825c5966dffff5ec4516d -->

[DTM tools Raster products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-raster.md)

DTM shading produces a map with different tones according to the illumination received by each area, helping you understand the relief.

With overhead illumination, flatter areas receive more light and appear lighter, while steeper areas receive less light. This does not represent relief well, but lets you quantify the area's different slopes.

Oblique illumination projects light from the document's northwest corner at 45 degrees. Areas facing that direction receive more light, while those facing away receive less. It represents relief well, but does not let you quantify terrain inclination.

Combined illumination (oblique and overhead) applies both with different color ranges, usually warm colors for overhead illumination and cool colors for oblique illumination, combining their advantages.

Shading can be generated only from a digital terrain model, so a digital model document must be active to run the tool.

Run the tool by:

* Clicking Shading on the [DTM tools](/mdtopx/herramientas-mdt/) tab.
* Pressing \[CTRL] + \[S].

A [dialog](../herramientas-mdt/sombreado/) requests shading map options. Click OK to calculate DTM shading. Save the document later as TIF, BMP or JPEG. Saving also creates an ASCII file with the same name and the ORT extension, containing shading georeferencing: upper left corner coordinates and pixel size in meters.

This tool also runs from the [command line](../desde-linea-de-comando/linea-de-comando-sombreado.md).
