# Cross sections
<!-- id: perfiles-transversales -->
<!-- origen: b8b3ad4e011912638fa2d99d9025cef8ca180664 -->

[Profiles dialog](./)

This dialog has three tabs:

* Geometry
* Graphic presentation
* Output files

## Geometry

![Cross sections dialog, Geometry tab](../../../images/image-50.png)

Complete these fields:

* **Width:**
  * _Using distances from the axis_: design width to the left and right of the axis, in meters.
  * _Using platform from file_
* **Distance between profiles**: distance between consecutive cross sections, in meters.
* **Generate profiles at alignment vertices**
* **Crossfalls**: design crossfall percentages to the left and right, measured from the axis.
* **Slopes**: X-to-Y displacement ratio for calculating intersections between the design grade and terrain, separately for cut and fill.

## Graphic presentation

![Cross sections dialog, Graphic presentation tab](../../../images/image-51.png)

Complete these fields:

* **Scales**: vertical and horizontal scale denominators for profiles recorded in the drawing file.
* **Codes**: codes for lines representing the design grade and terrain.
* **Plan drawing**: elements in the road plan document.
  * _Generate chainage texts_: labels each cross section with its chainage.
  * _Height_: text height in meters.
  * _Code_: code for recording texts.
* **Other settings:**
  * _Type of projection over DTM_: [dialog](tipo-de-proyeccion.md) configuring profile projection onto the digital model.
  * _Graphic presentation_: [dialog](presentacion-grafica.md) configuring profile arrangement in the output drawing file.
  * _Configure annotations_: [dialog](guitarra-de-perfiles-transversales.md) configuring cross-section annotations.

## Output files

![Cross sections dialog, Output files tab](../../../images/image-52.png)

Complete these fields:

* **ASCII output file**: cross-section output file, with points expressed as distances from the origin and elevations.
* **ASCII file type**: output format: TopCal, Clip or Genius.
* **Output report file**: ASCII report of generated cross sections.
* **Calculate alignment volume**: calculates volume between the proposed alignment and the original terrain.
