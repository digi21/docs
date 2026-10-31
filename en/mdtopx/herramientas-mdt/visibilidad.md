# Visibility
<!-- id: visibilidad -->
<!-- origen: a8a964eeb8aab1d2d9f8df5e4298de2e057e7f35 -->

[DTM tools: Raster products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-raster.md)

This tool calculates the area visible from a particular point. The output image shows visible area pixels in red.

![Visibility dialog](../../images/image-71.png)

The dialog contains these fields:

* **Image**: configures the output image. Specify pixel size in meters. Larger pixels produce lower image quality.
* **Position**: observer XYZ coordinates. Use the cursor button to select the position on screen.
* **Height**: observer height above the DTM.
* **Maximum distance**: maximum visibility distance. Set 0 to disregard distance.
* **Limit file**: file containing closed vector entities defining where to calculate visibility.

Requires an active triangulated digital model document.
