# Projection onto a DTM
<!-- id: proyeccion-sobre-mdt -->
<!-- origen: c1b9f641711ca3c61f540713b7b30fbc3e6e0d71 -->

[DTM tools: Civil products](../../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

![Projection onto a DTM dialog](../../../images/image-59.png)

This dialog assigns elevations to file entities by projecting them onto the digital model, or compares their elevations with projected elevations, generating error marks when differences exceed a tolerance. Complete these fields:

* **File for projection**: file containing entities to project. Use the button to the right to find it in Windows Explorer. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN, ESRI Shape or ASCII. Files can contain several entities, except ASCII, which reads only one as a line.
* **Type of projection over DTM**: [dialog](../perfiles/tipo-de-proyeccion.md) configuring profile projection onto the digital model.
* **Create results document**: generates a new document containing the projected vector file. Specify:
  * _Entity elevation_: Z stored at each entity vertex. Two options:
    * _DTM elevation_: elevation obtained directly from the point cloud.
    * _Elevation difference_: difference between the stored file value and its point cloud projection, useful for finding entity elevation errors.
  * _Entity code_: code or layer for storing vector entities. Two options:
    * _Original_: retains the entity's original code.
    * _By difference_: stores the entity with a code based on the elevation difference, the preceding parameter's second option. Set the [code-to-elevation-difference relationship](codigos-segun-diferencia-de-cota.md) with the button to the right.
* **Check elevation**: compares entity elevations with those obtained after projection onto the digital model.
* **Check outside**: marks entities outside the digital model's outer boundary.
* **Symbol size**: generated error mark size in meters.
* **Tolerance**: maximum permitted entity elevation difference, in meters.
* **Error code**: code for recording errors.
* **Error file**: file name with extension for storing errors. Use the button to the right to specify its location. Available formats:
  * DIGI: BIN extension.
  * AutoCad: DXF extension.
  * MicroStation: DGN extension.
* **Report file**: generates a report listing projected entities and their original errors. Use the button to the right to locate the file in Windows Explorer.

Requires an active triangulated digital model document.
