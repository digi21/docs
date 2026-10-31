# Import GTOPO30
<!-- id: importar-gtopo30 -->
<!-- origen: dd92399872a2864d735fdd2dbf72fce490dafaf4 -->

[Import file](/mdtopx/operaciones-con-archivos/importar/importar-archivo.md)

The application imports USGS GTOPO30 files: grids of points spaced 30 arcseconds apart covering different parts of the world. These are DEM digital models that must be converted to MDTop format.

A dialog specifies the area to import and the import precision.

![Import GTOPO30 files dialog](../../../images/dialogo-importar-gtopo30.jpg)

The dialog contains:

* Digital Model source:
* Digital model boundaries in geographic coordinates.
* Grid point spacing in kilometers.
* Estimated point count. If the area includes ocean, there will be fewer points.
* Digital Model target:
* Digital model boundaries in geographic coordinates: specify target model boundaries within the source model's boundaries.
* Points … of each point: the sampling interval, specifying how often a point is selected. For example, 5 imports only one out of every 5 points read.
* Amount: estimated target point count, based on the target boundaries and sampling interval.
* Projection: projection used to transform the geographic coordinates read. Available types are Geographic, direct Mercator and UTM. For UTM, specify the zone in Gore.
