# Export digital terrain models
<!-- id: linea-de-comando-exportar-modelos-digitales-del-terreno -->
<!-- origen: 3e9db6fd592ad433d523064fcaaff5102eb736d1 -->

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /EXPORT [archivo de salida]
```

The input file must be the digital model to export.

The output file specifies where to save the file in its new format.

To configure export, MDTop.INI must also contain the mandatory **\[ExportarMDT]** line followed by:

* **Límite**: 0 (do not export DTM boundaries) or 1 (export DTM boundaries). Used only for BIN, DXF or DGN export.
* **Ruptura**: 0 (do not export breaklines) or 1 (export breaklines). Used only for BIN, DXF or DGN export.
* **Triángulos**: 0 (do not export triangles) or 1 (export triangles). Used only for BIN, DXF or DGN export.
* **Vértices**: 0 (do not export triangle vertices) or 1 (export triangle vertices). Used only for BIN, DXF or DGN export.
* **Incremento**: grid spacing in meters for formats requiring equal row and column spacing, such as GTOPO30, SGE, ArcView and LH SOCET SET.
* **Unidad**: grid elevation unit for GTOPO30: 0 (meters), 1 (decimeters) or 2 (centimeters).
* **Tipo**: file type to import. Possible values are:
  * **0**: DIGI files.
  * **1**: DGN files.
  * **2**: DXF files.
  * **3**: DXF version 2000 or later.
  * **4**: ASCII files.
  * **7**: MTN 25 files.
  * **8**: USGS GTOPO30 files.
  * **9**: VirtuaLand files.
  * **10**: Servicio Geográfico del Ejército files.
  * **11**: ArcInfo GRD files.
  * **12**: ESRI ArcGIS files.
  * **13**: LH SOCET SET files.
* **IncrX**: column spacing in meters for grid output formats allowing different row and column spacing.
* **IncrY**: row spacing in meters for grid output formats allowing different row and column spacing.
* **RupturaDEM**: 0 or 1 depending on whether to include breaklines in a VirtuaLand grid.

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
