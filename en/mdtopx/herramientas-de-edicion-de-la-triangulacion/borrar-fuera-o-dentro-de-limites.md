# Delete outside or inside boundaries
<!-- id: borrar-fuera-o-dentro-de-limites -->
<!-- origen: 378f39e61a5cb42f74b99ab3b3207282c8232f7d -->

[Edit file](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

![Delete outside or inside boundaries dialog](../../images/image-80.png)

This tool deletes entities inside or outside boundaries. Boundaries can be defined by breaklines belonging to the [digital model](../como/como-triangulacion.md), or stored as closed lines in drawing files (DIGI, AutoCad or MicroStation format). Use it to delete information where you do not want to perform calculations, such as [contours](../como/como-curvado.md) or [profile](../como/como-perfiles.md) projection. The application displays a dialog with the following fields:

* **Selection of the boundaries**: two options load entities as boundaries:
  * _Breaklines like boundaries_: loads the entities selected in the list as boundaries. The list shows breaklines in the digital model. These entities must form closed entities for the program to select them as boundaries.
  * _Load boundaries from file_: loads drawing entities stored in a file as boundaries. These entities must be closed.
* **Where erase**: specifies where to delete triangles, with two options:
  * _Inside limits_: deletes triangles inside the boundaries.
  * _Outside limits_: deletes triangles outside the boundaries.
* **Fit to the limit**: for a digital model document, enable this option to cut triangles crossed by boundaries loaded from an external file, fitting the cut precisely to those boundaries.
