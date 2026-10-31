# Web Map Services
<!-- id: web-map-services -->
<!-- origen: c075707ad4165380df29f6865e586a6a16ccef0e -->

[VirtuaLand Load](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-cargar.md)

This tool downloads raster data from servers freely distributing geospatial data. It communicates through WMS queries to a server providing Web Map Services. Many mapping organizations publish downloadable data this way. Given their server addresses, configure where to download data for the current document's area. This data can help with surface modeling, LiDAR classification and other work.

![Connect to WMS server dialog](../../images/image-15.png)

The following parameters are required:

* **URL address**: list of servers to query for data downloads. By default, the program includes some Spanish server addresses. Change the list with **New**, **Delete** or **Edit** below it.
* **Information**: information about the URL selected above. Retrieved by querying the server and cannot be edited:
  * _Description_
  * _Title_
  * _Owner_
  * _Restrictions_
* **Layers**: list of published information layers. Select the layer to download.
* **Reference systems**: list of available reference systems. Select the one matching the current document's coordinates.
* **Output file**: output file name. The resulting document is a raster file, saved in TIFF, BMP or JPEG format.
* **Load onto this view?**: chooses how to display the data:
  * _No_: does not load the generated file in the current document view.
  * _As reference_: loads the file as a [reference](../operaciones-con-archivos/abrir-archivos-de-referencia.md).
  * _As texture_: loads the file as a [texture](cargar-texturas/). Available only when the current document is a DTM.
