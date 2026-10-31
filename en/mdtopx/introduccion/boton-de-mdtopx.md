# MDTopX button
<!-- id: boton-de-mdtopx -->
<!-- origen: 8d7d590d593d189daa5873fe6a3293fa33dd0c6c -->

[User interface](interfaz-de-usuario.md)

The MDTopX user interface has been substantially redesigned. The MDTopX button replaces File and is located in the interface's upper left corner.

Clicking the MDTopX button ![MDTopX button](../../images/boton-mdtopx.jpg) displays the same basic file opening, saving and printing commands available in earlier MDTop versions.

* [**New**](../operaciones-con-archivos/archivo-nuevo.md): creates a file.
* [**Open...**](../operaciones-con-archivos/abrir-archivo.md): opens an existing document.
* [**Import...**](../operaciones-con-archivos/importar/importar-archivo.md): imports data from other digital model types.
* **Save**: saves the current document. Enabled only if the document has changed. An existing document is saved in the same format. For a new document, Windows file selection lets you choose its location and format. To save in a different format, use Save as, explained below. Available formats depend on the document type:
  * Digital model files can be saved only as MDT.
  * Drawing files can be saved as BIN, DXF, DXF for AutoCad 2000 or later, or DGN.
  * Image files can be saved as TIFF, BMP or JPEG.
* **Save as...**: saves the current document with a different name or destination folder. Windows file selection opens to specify both.
* **Export...**: exports the current document's data. Available only for digital model or roads documents.
  * Digital model data can be stored in another digital model structure. Export is also available from the [command line](../desde-linea-de-comando/linea-de-comando-exportar-modelos-digitales-del-terreno.md). Supported export formats are:
    * [DIGI files](../operaciones-con-archivos/exportar/exportar-archivos-bin-dxf-o-dgn.md): mapping files for DIGI.
    * [DXF files](../operaciones-con-archivos/exportar/exportar-archivos-bin-dxf-o-dgn.md): mapping files for AutoCad.
    * [DXF 2000 files](../operaciones-con-archivos/exportar/exportar-archivos-bin-dxf-o-dgn.md): mapping files for AutoCad 2000 or later.
    * [DGN files](../operaciones-con-archivos/exportar/exportar-archivos-bin-dxf-o-dgn.md): mapping files for MicroStation 7 or earlier.
    * [DEM files for VirtuaLand](../operaciones-con-archivos/exportar/exportar-archivos-dem.md): grid digital terrain models for VirtuaLand.
    * [ASCII files](../operaciones-con-archivos/exportar/exportar-archivos-ascii-o-grid-de-arcinfo.md): grid digital terrain models stored as ASCII point lists.
    * [USGS GTOPO30 files](../operaciones-con-archivos/exportar/exportar-gtopo30.md): grid digital terrain models in the USGS (United States Geological Survey) format.
    * [SGE files](../operaciones-con-archivos/exportar/exportar-archivos-sge-arcview-o-socet-set.md): grid digital terrain models for the Servicio Geográfico del Ejército.
    * [ArcInfo grid files](../operaciones-con-archivos/exportar/exportar-archivos-ascii-o-grid-de-arcinfo.md): grid digital terrain models for ArcInfo.
    * [ArcView files](../operaciones-con-archivos/exportar/exportar-archivos-sge-arcview-o-socet-set.md): grid digital terrain models for ArcView.
    * MTN 25 files: grid digital terrain models in the Instituto Geográfico Nacional format.
    * [LH Socet Set files](../operaciones-con-archivos/exportar/exportar-archivos-sge-arcview-o-socet-set.md): grid digital terrain models for the Socet Set photogrammetric program.
    * Binary Stereolithography files: STLB files for modeling three-dimensional objects.
    * ASCII Stereolithography files: STLA files for modeling three-dimensional objects.
  * For a roads document, if the horizontal alignment view was active when the command was run, a [dialog](../operaciones-con-archivos/exportar/exportar-trazados.md) selects the horizontal and vertical alignments to export. Supported formats are:
    * DIGI files: mapping files for DIGI.
    * DXF files: mapping files for AutoCad.
    * DXF 2000 files: mapping files for AutoCad 2000 or later.
    * DGN files: mapping files for MicroStation.
* **Print...**: prints the current document.
* **Preview**: displays how the current document will print.
* **Print setup...**: configures the print output device.
* **Recent file**: lists up to 10 recently used documents for quick reopening.
* **Close**: closes the current document. If it has unsaved changes, the program asks about them.

A button also opens the application's general [**Options**](../otras-herramientas/opciones.md).
