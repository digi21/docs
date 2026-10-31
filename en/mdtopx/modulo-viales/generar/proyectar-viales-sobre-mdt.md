# Project roads onto a DTM
<!-- id: proyectar-viales-sobre-mdt -->
<!-- origen: f41e3b46bd512e54b05958cb97751e2c135ab18d -->

[Roads Generate](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-viales/viales-generar.md)

Once horizontal alignment, vertical alignment and templates are defined, project the road onto the DTM to calculate derived plans such as contours and volumes.

![Project roads onto a DTM dialog](../../../images/image-100.png)

This tool projects selected roads onto the currently loaded DTM, generating a document with:

* All original DTM breaklines and points outside the projected road area or areas.
* A line representing the road axis.
* One line for each template defining point, joining corresponding points in generated cross sections. Configure cross-section spacing with **Set up**.
* A line defining the road outline where it intersects terrain.

These lines form a new drawing document. [Triangulate](../../como/como-triangulacion.md) it to create a modified DTM with the road projected onto the original terrain. Then generate [contours](../../como/como-curvado.md) or compare it with the original DTM for [earthwork volumes](../../como/como-cubicacion.md).

The dialog lists available horizontal alignments and, below them, their vertical alignments. Use **Add** to select roads to project or **Delete** to remove them.

**Set up** opens a [dialog](configuracion-de-la-planta.md) changing plan drawing options such as cross-section spacing and chainage labels.

If any template has more than one layer, an additional drawing document is generated for each extra layer, containing only lines defining that road layer. Create a new DTM from each and compare it with the road DTM to calculate that layer's volume.
