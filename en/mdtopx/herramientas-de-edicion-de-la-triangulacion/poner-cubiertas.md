# Add objects to the DTM
<!-- id: poner-cubiertas -->
<!-- origen: d5732dff5931a79b8f3061fb3f76962ce26190f4 -->

[DTM Objects](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/objetos-mdt.md)

This tool inserts roofs or entities that do not rest on the ground into the digital model. It creates new objects in the current DTM, calculating new triangulations for each boundary and vertical triangles representing their height. Roofs must be stored in a drawing file at roof elevation.

![Image with a roof](../../images/cubiertas-1.jpg)

This first image shows the digital model with the file containing roofs loaded as a reference. The roof is "floating" above the digital model.

Run the tool to generate the building solid, producing the following digital model:

![Image with projected roof](../../images/cubiertas-2.jpg)

The program has projected the roof onto the digital model, generating triangles for the top of the object and vertical triangles forming the building volume. The input file can contain entities inside each surface that define it more accurately, for example a set of points defining a gabled roof.

![Insert new object into DTM dialog](../../images/image-85.png)

The dialog requests the following parameters:

* **Input file**: file containing closed vector entities representing the upper boundaries of the objects to include. These files can also contain open entities defining the surfaces more accurately.
* **Type**: object type, with Building, Bridge and Tree as options.
* **Roof**: code for triangles generated on top of the object. The button to the right opens the program's stored [Code list](../otras-herramientas/lista-de-codigos/).
* **Wall**: code for vertical triangles generated down to the object's projection on the DTM. The button to the right opens the program's stored [Code list](../otras-herramientas/lista-de-codigos/).
* **Include no-close entities**: includes entities that define the surface interior rather than its outer boundary, such as ridge lines, party walls or point clouds defining the surface. If disabled, only closed entities are considered.
* **Not include entities under limit**: excludes open entities below the elevation of their containing surface.
* **Not include entities over limit**: similarly excludes open entities above the elevation of their containing surface.

![Digital model with buildings](../../images/cubiertas-3.jpg)
