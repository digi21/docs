# Extract breaklines
<!-- id: extraer-lineas-de-ruptura -->
<!-- origen: 7811d5d445bfa99a4acfec80a48b96629c3711b4 -->

[VirtuaLand General](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-general.md)

![Breaklines dialog](../../images/image-110.png)

This tool automatically generates breaklines defining a point set. The digital model must be smoothed first. Terrain trends locate valleys, ridges and points of geomorphological interest. The tool displays a dialog with the following fields:

* **General Parameters**: defines initial parameters to establish the magnitude of calculated elements:
* **Scale**: also change linear and area generalization values with [**Advanced...**](../herramientas-mdt/curvado/curvado-avanzado.md).
* **Limit of curvature**: curvature value below which an element is not considered a breakline.
* **Minimum distance**: minimum distance of calculated elements, in meters.
* **Codes**: codes used to record the different calculated entities.
* **Include important points**: includes point elements. Specify the text height for their elevations and the text's offset from the point, in meters.

The result is a drawing file containing calculated breaklines and points of interest. Save it in DIGI BIN, AutoCad DXF, MicroStation DGN or ESRI ArcGIS Shape format.
