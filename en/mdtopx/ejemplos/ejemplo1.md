# Example 1: Contouring from a point cloud
<!-- id: ejemplo1 -->
<!-- origen: d59b62f4044abbe6e1451d79845f790961e3dce2 -->

[Examples](/mdtopx/ejemplos/)

## Objective

Generate contours for an area from a tachymetric survey.

## Input files

* RADIA.PTS: TopCal file containing surveyed points in the area to contour.
* LIMITE.DXF: AutoCad DXF file containing the area's boundary as a single closed line.

## Procedure

* Load RADIA.PTS using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting TopCal files.
* The screen displays a point cloud with two text labels for each point: its number and elevation.
* Run [Triangulate](../como/como-triangulacion.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab to generate a digital terrain model from the survey. The file contains only points, so there are no breaklines. The resulting digital model contains many triangles visible on screen.

![Triangulation dialog](../../images/pantalla1-ejemplo1.jpg)

* With this file active, run [Contours](../como/como-curvado.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab. For the boundary file, enter the DXF containing the area boundary. The resulting contours can be saved in your chosen format.

![Contouring dialog](../../images/pantalla4-ejemplo1.jpg)

## Output files

* TRIANGULACION DE RADIA: digital terrain model in MDTop's native format.

![Triangulation file](../../images/pantalla3-ejemplo1.jpg)

* CURVADO DE TRIANGULACION DE RADIA: drawing file containing contour lines. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Contour file](../../images/pantalla5-ejemplo1.jpg)
