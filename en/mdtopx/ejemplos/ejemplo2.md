# Example 2: Obtain longitudinal and cross profiles along a corridor
<!-- id: ejemplo2 -->
<!-- origen: bb6036a8f1e339c5982dc1c09bde8d9471b8c386 -->

[Examples](/mdtopx/ejemplos/)

## Objective

Generate longitudinal and cross profiles along a corridor from a tachymetric survey.

## Input files

* RADIA.PTS: TopCal file containing surveyed points in the profile area.
* LINEA.DXF: AutoCad DXF file containing a line representing a corridor designed in the office, with known design X,Y,Z coordinates.

## Procedure

* Load RADIA.PTS using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting TopCal files.
* Run [Triangulate](../como/como-triangulacion.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab to generate a digital terrain model from the survey. The file contains only points, so there are no breaklines. The resulting model contains many triangles visible on screen.
* With this file active, run [Profiles](../como/como-perfiles.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab. Configure profile information, data bands and their settings, cross profiles, corridor volume calculation, etc.

![Profiles dialog](../../images/pantalla1-ejemplo2.jpg)

![Cross profiles dialog](../../images/pantalla2-ejemplo2.jpg)

![Data band configuration dialog](../../images/pantalla3-ejemplo2.jpg)

* After calculation, a dialog shows cut and fill earthwork volumes. Files are generated according to the enabled options: longitudinal profiles, cross profiles, projected corridor, digital model with the projected corridor, corridor volume calculation, etc. An ASCII cross profile file in the chosen format and an ASCII report are also saved to disk.

## Output files

* TRIANGULACION DE RADIA: digital terrain model in MDTop's native format.
* PERFILES DE LINEA: longitudinal profile drawing. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Longitudinal profile file](../../images/pantalla4-ejemplo2.jpg)

* TRANSVERSALES DE LINEA: cross profile drawing. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Cross profile file](../../images/pantalla5-ejemplo2.jpg)

* PROYECCION DE LINEA: plan drawing of the line projected onto the terrain. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Projected corridor file](../../images/pantalla6-ejemplo2.jpg)

* TRAZA DE LINEA: MDTop native file containing the digital terrain model modified by projecting the corridor.

![Corridor triangulation](../../images/pantalla7-ejemplo2.jpg)

* CUBICACION DE LINEA: MDTop native file containing corridor volume calculations.

![Corridor volume calculation](../../images/pantalla8-ejemplo2.jpg)

* INFORME.ASC: ASCII information for each cross profile: chainage, cut area and fill area.

```text
Transversales de Línea\
Distancia al Superficies (m²) Volúmenes (m³)\
Numero origen (m) Desmonte Terraplén Desmonte Terraplén\
Perfil 1 - 0+000 0.000 2.703 0.559\
Perfil 1 - 0+010 10.000 14.538 0.000 50.077 2.797\
Perfil 1 - 0+020 20.000 25.455 0.000 199.967 0.000\
Perfil 1 - 0+030 30.000 32.134 0.000 287.949 0.000\
Perfil 1 - 0+040 40.000 29.373 0.000 307.538 0.000
```

* TRANSVER.ASC: cross profile ASCII information in TopCal output format: distance from the axis and elevation.

```text
0,11
-5.000,927.170
-4.875,927.170
-2.916,927.190
0.000,927.250
2.330,927.310
4.222,927.430
5.000,927.460
```
