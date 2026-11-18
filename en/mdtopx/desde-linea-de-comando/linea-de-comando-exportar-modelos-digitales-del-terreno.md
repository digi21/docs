# Export digital terrain models
<!-- id: linea-de-comando-exportar-modelos-digitales-del-terreno -->
<!-- origen: b29cb2b74bb4d13fbb8540fde5ec1d7b9155ef72 -->

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /EXPORT [archivo de salida]
```

The input file must be the digital model to export.

The output file specifies where to save the file in its new format. The extension of the output file determines the format:

| Extension | Format |
| --- | --- |
| BIN | DIGI |
| DXF | DXF or DXF version 2000 or later |
| ASC, TXT | ASCII |
| DEM | VirtuaLand DEM or USGS GTOPO30 |
| SGE | Servicio Geográfico del Ejército |
| GRD | ArcInfo GRD |
| GRDASC | ESRI ASCII Grid (ArcGIS) |
| MTN25 | MTN 25 |
| LSS | LH SOCET SET |
| DGN | DGN |
| STL | Binary STL or ASCII STL |
| LAS | LAS |
| LAZ | LAZ |
| TIF, TIFF | TIF |
| MDT | MDT, in the MDTopX format (with textures, if the model has them) or in the MDTop 2007 format |
| SHP | Shape |
| IFC | IFC 4.1 |

If two formats use the same extension (DXF and DXF version 2000, DEM and GTOPO30, binary STL and ASCII STL), MDTopX exports the format that the **Tipo** key of the **\[ExportarMDT]** section of MDTopX.ini indicates; if the key does not exist or indicates a format with another extension, MDTopX uses DXF for .DXF, VirtuaLand DEM for .DEM and binary STL for .STL. With the MDT extension, MDTopX writes the native MDTopX format, unless **Tipo** is 6 (MDTop 2007). With an extension that the table does not include, MDTopX writes an error to the MDTopX.LOG file and writes no file. With LAS and LAZ, MDTopX writes the vertices of the model, regardless of the values of **Limite**, **Ruptura**, **Triangulos** and **Vertices**. With DGN, MDTopX uses the seed file and the BIN-DGN table saved in the user configuration.

To configure export, MDTopX.ini must also contain the mandatory **\[ExportarMDT]** line followed by:

* **Limite**: 0 (do not export DTM boundaries) or 1 (export DTM boundaries). Used only for BIN, DXF or DGN export. Default: 1.
* **Ruptura**: 0 (do not export breaklines) or 1 (export breaklines). Used only for BIN, DXF or DGN export. Default: 1.
* **Triangulos**: 0 (do not export triangles) or 1 (export triangles). Used only for BIN, DXF or DGN export. Default: 0.
* **Vertices**: 0 (do not export triangle vertices) or 1 (export triangle vertices). Used only for BIN, DXF or DGN export. Default: 1.
* **Objetos**: 0 (do not export the objects of the digital model) or 1 (also export the objects of the digital model). Default: 0.
* **Base**: 0 or 1. The value 1 also exports the base of the model as a set of triangles. Used only for STL export. Default: 0.
* **PuntosFuera**: 0 (do not include grid points outside the digital model) or 1 (include them). Used only for ASCII export. Default: 1.
* **Incremento**: grid spacing in meters for formats requiring equal row and column spacing: GTOPO30, SGE, ESRI ASCII Grid (ArcView) and LH SOCET SET files. Default: 1.
* **Unidad**: grid elevation unit for GTOPO30: 0 (meters), 1 (decimeters) or 2 (centimeters). Default: 0.
* **IncrX**: column spacing in meters for grid output formats allowing different row and column spacing: ASCII, DEM, TIF and ArcInfo GRD files. Default: 1.
* **IncrY**: row spacing in meters for grid output formats allowing different row and column spacing: ASCII, DEM, TIF and ArcInfo GRD files. Default: 1.
* **RupturaDEM**: 0 or 1 depending on whether to include breaklines in the grid when the format is DEM (VirtuaLand) or TIF. Default: 1.
* **Tipo**: format to export to when the extension of the output file allows several formats, and format of the MDT file (value 6: MDTop 2007). MDTopX reads this key only from MDTopX.ini and does not take it from the user configuration. Possible values:
  * **0**: DIGI files.
  * **2**: DXF files.
  * **3**: DXF version 2000 or later.
  * **4**: ASCII files.
  * **6**: MDT files.
  * **7**: DGN files.
  * **8**: MTN 25 files.
  * **9**: USGS GTOPO30 files.
  * **10**: VirtuaLand DEM files.
  * **11**: Servicio Geográfico del Ejército files.
  * **12**: ArcInfo GRD files.
  * **13**: ESRI ASCII Grid (ArcGIS) files.
  * **14**: LH SOCET SET files.
  * **16**: Shape files.
  * **21**: TIF files.
  * **26**: IFC 4.1 files.
  * **49**: Binary STL files.
  * **50**: ASCII STL files.
  * **54**: LAS files.
  * **55**: LAZ files.

MDTopX exports the MTN 25, Servicio Geográfico del Ejército, ArcInfo GRD, ESRI ASCII Grid, LH SOCET SET and Shape formats through a plugin. If the plugin for the format is not installed, the export returns an error.

If the file omits a field other than **Tipo**, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field. MDTopX does not save the values of this section in its preferences.

```ini
[ExportarMDT]
Limite=0
Ruptura=0
Triangulos=0
Vertices=1
RupturaDEM=1
Incremento=1.000000
Unidad=0
Tipo=3
IncrX=1.000000
IncrY=1.000000
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
