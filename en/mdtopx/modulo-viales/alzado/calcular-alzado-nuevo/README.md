# Compute new vertical alignment
<!-- id: calcular-alzado-nuevo -->
<!-- origen: 1472362b74b7a367023e2545ef651d1d72c86d80 -->

[Vertical tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-alzado.md)

Select New alignment on the [Vertical tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-alzado.md). Enter the vertices defining its straight sections on screen with the left mouse button, then right-click to finish.

The following dialog configures the vertical alignment and inserts parabolic vertical curves.

It also appears when requesting information about an existing vertical alignment with the toolbar's Info tool.

![Compute new vertical alignment dialog](../../../../images/image-108.png)

Displayed fields:

* **Vertical alignment information**: horizontal alignment, name and type, Design or Terrain according to whether obtained from the DTM or drawn by the user.
* **Point 1**: chainage and elevation of the selected segment's point 1. Slope corresponds to the preceding segment.
* **Point 2**: chainage and elevation of point 2. Slope corresponds to the preceding segment joining it to point 1.
* **Point 3**: chainage and elevation of point 3. Slope corresponds to the preceding segment joining it to point 2.
* **Element features**: parameters defining a new or selected existing vertical curve. Change the first three below to define it. Remaining parameters update automatically; proceeding is possible only when chainages lie between points 1 and 3.
  * _Kv_: parabola constant.
  * _Shaft_: elevation difference between vertex 2 and the curve at the same chainage.
  * _Length_: curve length in meters.
  * _PK TE_: chainage where the vertical alignment is tangent to its initial straight section.
  * _PK TS_: chainage where it is tangent to its final straight section.
  * _Dif. pend._: slope difference in percentage points.

![Vertical curve](../../../../images/acuerdo.gif)

* **Vertical alignment vertex list**: vertices with chainage, elevation and Kv if containing a parabolic curve. Three associated buttons:
  * _Add_: appends a new vertex.
  * _Edit_: edits the selected point. Enables all vertex fields and displays Modify and Cancel to accept or reject curve changes.
  * _Erase_: deletes the selected point.

Three more buttons provide operations:

* [Insert interior vertex](../insertar-vertice-interior.md): inserts an interior vertex at a specified chainage.
* [Search intersections](/mdtopx/modulo-viales/alzado/buscar-intersecciones.md): finds plan intersections with other alignments, calculates elevation differences between vertical alignments and acts accordingly.
* [Fit to horizontal alignment limits](ajustar-a-limites-del-trazado.md): matches the vertical alignment's start and end chainages to the horizontal alignment.
