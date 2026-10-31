# Additional triangulation information
<!-- id: informacion-adicional-de-triangulacion -->
<!-- origen: 876dea662301710a42dfd463426c5880bdfea4c5 -->

[TIN view](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/vista-tin.md)

![Additional triangulation information dialog](../../images/image-78.png)

This dialog displays the following characteristics of the [digital terrain model's](../como/como-triangulacion.md) morphology:

* **DTM general features**:
  * _Planar surface_: digital model area in square meters, obtained by summing each triangle's area in the XY plane.
  * _Space surface_: digital model area in square meters, obtained by summing each triangle's area in space, taking point elevations into account.
  * _Min Slope and Max Slope_: slope limits calculated in degrees across all digital model triangles.
  * _Average Slope_

![Additional volume triangulation information dialog](../../images/image-79.png)

* **Volume features**: displayed only when the digital model is a [volume calculation](../como/como-cubicacion.md) document.
  * _Cut volume and Fill volume_: cut or fill volume in cubic meters, obtained by summing the volumes calculated for all model triangles. Negative point elevations represent cut and positive elevations represent fill.
  * _Cut surface and Fill surface_: area occupied by cut and fill zones, in square meters.
