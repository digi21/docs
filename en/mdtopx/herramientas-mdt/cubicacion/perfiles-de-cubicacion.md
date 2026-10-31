# Volume calculation profiles
<!-- id: perfiles-de-cubicacion -->
<!-- origen: a2ef4b5c8a7361198c59210834bec17065baef41 -->

[Volumes dialog](./)

![Volume calculation profiles dialog](../../../images/image-57.png)

This dialog configures profiles drawn during volume calculations. Use elements stored in a drawing file or generate profiles automatically from the volume calculation area's dimensions. For automatically generated profiles, volumes can also be calculated from profile areas.

Complete these fields:

* **Profile source**: source of profiles projected onto the digital models:
  * _Profiles stored in a file_: drawing file containing profiles to project. Formats: DIGI BIN, AutoCad DXF, MicroStation DGN or ASCII coordinates defining the profiles. Files can contain multiple profiles; ASCII supports only one.
  * _Horizontal profiles_: automatically positions horizontal profiles at the specified spacing within the volume calculation area.
  * _Vertical profiles_: automatically positions vertical profiles at the specified spacing within the volume calculation area.
* **Calculate volume**: with horizontal or vertical profiles selected, calculates volume from their areas. Compare this with triangle or grid calculations. Enabling it requests an ASCII file name for storing the calculated data.
* **Annotations**: includes information bands around longitudinal profiles. Configure them with [Configure](../perfiles/guitarra.md).
* **Scales**: horizontal and vertical scale denominators, determining profile generalization and the presentation ratio between axes.
* **Codes**: codes for lines representing the design grade and terrain.
* [**Type of projection over DTM**](../perfiles/tipo-de-proyeccion.md): how to project profiles onto the digital model.
* [**Graphic presentation**](../perfiles/presentacion-grafica.md): how to arrange profiles in the final drawing file.
