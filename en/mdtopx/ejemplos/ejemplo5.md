# Example 5: Contouring from existing contours
<!-- id: ejemplo5 -->
<!-- origen: b0cc0c5e75775b06be024b7fabd062a355062ad9 -->

[Examples](/mdtopx/ejemplos/)

## Objective

Generate five-meter contours for an area compiled using only five- and twenty-five-meter contours.

## Input file

* 78.BIN: DIGI BIN file containing photogrammetric compilation.

## Procedure

* Load 78.BIN using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting DIGI files.
* Run [Triangulate](../como/como-triangulacion.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab to generate a digital terrain model from the mapping. Select which lines are breaklines and which lines to use to calculate the model.

![Triangulation dialog](../../images/pantalla1-ejemplo5.jpg)

* Run [Contours](../como/como-curvado.md) on the [DTM tools](../fichas-de-herramientas/ficha-de-herramientas-mdt/) tab and set the output contour interval to five meters.

![Contouring dialog](../../images/pantalla3-ejemplo5.jpg)

## Output files

* TRIANGULACION DE 78.MDT: digital terrain model in MDTop's native format. Not included to save space.

![Triangulation file](../../images/pantalla2-ejemplo5.jpg)

* CURVADO DE 78: drawing containing the new contours. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Contour file](../../images/pantalla4-ejemplo5.jpg)
