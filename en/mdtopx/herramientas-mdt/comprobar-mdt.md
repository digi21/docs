# Check DTM
<!-- id: comprobar-mdt -->
<!-- origen: d15b6739b1ab6a2ab67807246e865538eb90d5fa -->

[DTM tools: Civil products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

![Check DTM dialog](../../images/image-60.png)

The application checks a digital terrain model file's elevations. The digital model must contain only contours and spot heights, and contours should have been entered as breaklines. The program searches for missing contours, contours with incorrect elevations, misplaced spot heights and other errors.

Complete these fields:

* **Interval**: elevation difference between consecutive minor contours, in meters.
* **Error code**: code for storing errors in the output file.
* **Size**: error mark size in the output file, in meters.
* **Error file**: name of the file storing errors. Use the button to the right to specify its location. Available formats:
  * DIGI: BIN extension.
  * AutoCad: DXF extension.
  * MicroStation: DGN extension.

Requires an active triangulated digital model document.
