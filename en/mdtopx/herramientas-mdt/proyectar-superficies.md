# Project surfaces
<!-- id: proyectar-superficies -->
<!-- origen: 57436c08b9298e57b967f1c489ded46a089d5988 -->

[DTM tools: Civil products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

This tool projects surfaces onto the digital model for two purposes: raising a surface above the DTM according to a centroid specifying its height difference, or generating a centroid with its relative height above the DTM.

![Surface projection over DTM dialog](../../images/image-70.png)

The dialog contains these fields:

* **File for projection**: file containing closed vector entities representing surfaces to project.
* [**Type of projection over DTM**](perfiles/tipo-de-proyeccion.md): how to project entities onto the DTM.
* **Projection mode**: two options:
  * _Surfaces without height, with centroid_: ignores surface elevations and projects entities onto the DTM. It reads each entity's centroid and raises the surface according to its value and the list below.
  * _Surfaces with height, without centroid_: requires elevated surfaces. Entities are projected onto the DTM, then a centroid containing the differential height is added according to the elevation difference and the list below.
* **Height of the limits**: four ways to determine surface elevation:
  * _Centroid height_: projects only the centroid onto the DTM. Faster but less accurate on steep terrain.
  * _Maximum height_: projects all entity points and uses the highest elevation.
  * _Minimum height_: projects all entity points and uses the lowest elevation.
  * _Average height_: projects all entity points and calculates their mean elevation.
* **Centroid code**: code for generated centroids.
* **Centroid height**: size of generated centroid texts in ground coordinates.
* **Centroid list**: relationship between centroid values and height above the DTM. For example, the Spanish cadastre represents each building floor with a Roman numeral. Values for below-ground floors, starting with a minus sign, and additional areas, marked with a plus sign, such as terraces or balconies, are ignored for the Spanish cadastre.
* **New centroid text**: adds, edits or deletes values in addition to the defaults. Specify the new centroid value and the height above the DTM it represents, in meters.

[Watch video: Project surfaces onto a digital model](https://youtu.be/J33Mxf5fAAA)

Requires an active triangulated digital model document.
