# Export digital terrain models
<!-- id: linea-de-comando-exportar-modelos-digitales-del-terreno -->
<!-- origen: a1fbbe7e163f4b2338b4341fbd3bef84f2eabf32 -->

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /EXPORT [archivo de salida]
```

The input file must be the digital model to export.

The output file specifies where to save the file in its new format.

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
* **Tipo**: file type to export to. Possible values are listed below. Default: 0.
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

MDTopX exports the MTN 25, Servicio Geográfico del Ejército, ArcInfo GRD, ESRI ASCII Grid, LH SOCET SET and Shape formats through a plugin. If the plugin for the format is not installed, the export returns an error.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

```ini
[ExportarMDT]
Limite=0
Ruptura=0
Triangulos=0
Vertices=1
RupturaDEM=1
Incremento=1.000000
Unidad=0
Tipo=0
IncrX=1.000000
IncrY=1.000000
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
