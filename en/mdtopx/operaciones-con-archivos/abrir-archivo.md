# Open file
<!-- id: abrir-archivo -->
<!-- origen: 45850a1fa1dd0287a1a856dfa12f5f4da0c85202 -->

[MDTopX button](/mdtopx/introduccion/boton-de-mdtopx.md)

To open an existing file, click the [MDTopX button](../introduccion/boton-de-mdtopx.md) and choose Open. Windows file selection opens to choose the file location and type.

MDTopX supports these document types:

* Project file.
* Digital terrain model.
* Vector drawing file.
* LiDAR point file.
* Raster image file.
* Roads geometry file.

The document type created depends on the file opened.

Supported file types for each document type are:

* [**Project file**](proyectos-de-mdtopx.md):
  * MDTX: MDTopX's native project files.
* **Digital terrain model**:
  * MDT: MDTop's native TIN digital terrain model files. [Integrated textures](../modulo-virtualand/integrar-texturas.md) are loaded when opened (format version 9, which earlier MDTopX versions cannot open).
  * OBJ: Wavefront OBJ meshes. Vertices and faces are read without textures; see [Export to OBJ with textures](../modulo-virtualand/exportar-obj.md#opening-an-obj-in-mdtopx).
  * T3D: MDTop's native three-dimensional TIN digital terrain model files.
  * DEM: grid digital terrain models from MDTop's VirtuaLand module.
* **Vector drawing file**:
  * BIN: DIGI drawing files.
  * DXF: AutoCad drawing exchange files. MDTop supports DXF files for AutoCad 2000 or earlier. DXF files can contain symbols stored as blocks. A dialog offers three ways to read these blocks:
    * Explode blocks: converts each block to drawing lines.
    * Read as points: converts blocks to point entities.
    * Do not read: ignores block insertions.
  * DGN: MicroStation drawing files. MDTop supports DGN files for MicroStation 7 or earlier. Like DXF files, they can contain cells, so the same dialog asks how to handle them.
  * PTS: TopCal point files.
  * ASC: ASCII files listing X, Y, Z coordinates. Their layout varies and may contain additional fields. When this type is identified, a dialog lets you configure:
    * Whether each record begins with an identifier field.
    * Whether to treat the entire point list as a linear entity.
    * Whether each record includes LiDAR intensity.
    * Whether each record includes a point RGB color value.
  * [SHP](leer-archivos-shape.md): Arc-GIS Shape files.
  * KML: OpenGIS KML files.
* **LiDAR point file**:
  * LAS: point files from LIDAR technology.
  * LAZ: internally compressed LiDAR point files.
  * E57: LiDAR point files, usually terrestrial.
  * Leica PTS: Leica HDS laser point files with Cartesian coordinates.
  * Leica PTX: Leica HDS laser point files with spherical coordinates.
* **Raster image file**:
  * BMP: Bitmap raster images.
  * TIF: TIFF raster images. Their headers may contain geographic information, such as a digital terrain model stored as a raster image. These are GeoTiff files, which the program also interprets.
  * JPG: JPEG raster images.
  * ECW.
* **Roads geometry file**:
  * VIA: MDTop's native files defining [road alignments](../modulo-viales/).
