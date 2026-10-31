# Platforms
<!-- id: como-plataformas -->
<!-- origen: 3ba11b370568a10278ce99601e3070183dcbd816 -->

[DTM tools Civil products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

This tool projects closed entities onto a digital model. They represent platforms or closed surfaces whose inclination and elevation are defined by the elevations of their boundary vertices. Examples include projecting a surface at a specified height for a landfill, a typical architectural excavation or a quarry.

It accepts two types of input:

* The platform boundary at its design elevation. For example, provide an earthworks boundary at 675.56 m and have the program calculate slopes and their intersection with the terrain. The platform boundary is known and the terrain intersection is calculated. The platform boundary line must have elevations.
* The terrain intersection line, from which the program calculates the platform at a specified elevation. For example, provide the terrain intersection boundary and calculate slopes reaching a platform at 650 m. The terrain intersection is known and the platform boundary is calculated. The intersection line need not have elevations, because it is projected onto the DTM.

The active document must contain a previously generated natural terrain DTM.

The program requires a saved drawing document to generate a new DTM containing the projected surface, with the option of calculating volumes relative to the original terrain DTM.

Run the tool by:

* Clicking Platforms on the [DTM tools](/mdtopx/herramientas-mdt/) tab.
* Pressing \[CTRL] + \[L].

A [dialog](../herramientas-mdt/plataformas.md) requests projection options. Click OK to project the file's platforms and generate:

* A digital terrain model document with the platforms projected onto the natural terrain DTM using the specified slopes. Use this DTM later, for example, to generate contours.
* If volume calculation is enabled, another document containing volumes and areas colored by cut or fill. This digital model consists of triangles whose elevations are the differences between the two models. Surface colors are:
  * Green for cut.
  * Red for fill.
  * Blue for unchanged areas.

See [Example 6: Calculate a platform](/mdtopx/ejemplos/ejemplo-6-calculo-de-una-plataforma.md) for an example.
