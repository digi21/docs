# Profiles
<!-- id: perfiles -->
<!-- origen: 6013f33e63ef113d8c098313f0adf97d561955c4 -->

[Profiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md)

![Profiles dialog](../../../images/image-48.png)

Complete these fields:

* **Profiles file**: drawing file containing profiles to project. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN or ASCII coordinates defining the profiles. Files can contain multiple profiles; ASCII supports only one.
* **Include alignment**: includes the entity that generated the profile, the design alignment, in the profile annotations. Disable to include only the terrain profile.
* **Include profile**: generates longitudinal profiles. Disable if they are unnecessary, for example when only cross sections are wanted.
* **Cross section**: generates cross sections from longitudinal profiles. Configure them with [Set up...](perfiles-transversales.md).
* **Annotations**: includes an information band around longitudinal profiles. Configure it with [Set up...](guitarra.md).
* **Scales**: horizontal and vertical scale denominators, determining profile generalization and the presentation ratio between axes.
* **Codes**: codes for the lines representing the design alignment and terrain surface.
* [**Type projection over DTM...**](tipo-de-proyeccion.md): how to project profiles onto the digital model.
* [**Graphic presentation...**](presentacion-grafica.md): how to arrange profiles in the final drawing file.

Requires an active triangulated digital model document.
