# Template cross section
<!-- id: seccion-tipo -->
<!-- origen: 4e7a734e834215818aff7a2850627fe549dee8ec -->

[Template list](listado-secciones-tipo.md)

This dialog designs a template cross section for road alignments.

![Template cross section dialog](../../../images/image-92.png)

General characteristics:

* **Cross section name**: name for later identification.
* **Topsoil**: terrain topsoil thickness in meters. Before comparing digital models for volumes, the program removes this layer from the original model because it should not count toward cut or fill.

Each layer has the following parts, divided into left and right sides of the axis passing through the template's application point:

* **Platform**: fixed part of the template, always present when applied.
* **Cut**: used when the platform endpoint is below terrain.
* **Fill**: used when the platform endpoint is above terrain.

Assign as many points as needed to each part. For a template symmetric about its axis, design one side and use **Mirror...** to copy it to the other. If points already exist there, the program warns before overwriting.

The point list below the part selector shows each point's number, distance and elevation relative to the central axis point at 0,0.

Add points in three ways:

1. **Relatives**: X and Y increments from the last entered point. For the first point of the edited part, uses the last point of the adjacent part.
2. **Absolutes**: distance and elevation relative to the axis center point.
3. **Polar**: distance and slope relative to the last entered point.

You can **Add**, **Edit** or **Erase** template points.

A template can contain one or more layers. Each layer accepts a vertical **Offset** measured from the axis and a different drawing code so its projected road lines can be identified on the digital model.

The dialog provides **Add...**, **Duplicate...**, **Rename...** and **Erase** layer actions.

A diagram at the lower right previews the template. Display only the part being edited or the entire template, and all layers or just the current layer.
