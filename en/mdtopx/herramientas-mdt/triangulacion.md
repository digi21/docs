# Triangulation
<!-- id: triangulacion -->
<!-- origen: 81b727b0939c2ceff4be7017b06245cc84e39fe2 -->

[Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)

![Triangulation dialog](../../images/image-44.png)

Complete the following fields in this dialog:

* **Height Range**: minimum and maximum elevations for excluding entities from the final digital model.
* **Triangles Code**: code for storing triangles. Change it later in the [TIN document Properties pane](../introduccion/paneles-de-la-aplicacion/panel-propiedades/panel-propiedades-documento-tin.md).
* **Codes**: entities to select for triangulation. They must also be within the height range. The list displays each code name and its mnemonic, if present. See the [Code list dialog](../otras-herramientas/lista-de-codigos/) for more information.
* **Breaklines**: enables or disables breakline preservation. When enabled, select the codes to use as breaklines. Only codes already selected for generating the digital model are listed. The list displays each code name and mnemonic, if present.
* **Height in the intersections among breaklines**: when breaklines are added, the program analyzes them and generates new intersection points. Their elevations can use:
  * _Independent_: elevation from the first line found in the file.
  * _Average_: average elevation of both breaklines.
  * _Highest_: higher elevation of the two breaklines.
  * _Lowest_: lower elevation of the two breaklines.
* **Do not join dots of contour lines**: prevents triangles from joining nonconsecutive points on the same contour. Such flat triangles would not produce a digital model matching the terrain represented by the source contours. When enabled, specify the original contour **Interval** in meters.
* **Maximum distance among points**: optional maximum distance for two points to be considered neighbors and form a triangle. Set 0 to leave this unspecified.

Requires an active document containing vector entities.
