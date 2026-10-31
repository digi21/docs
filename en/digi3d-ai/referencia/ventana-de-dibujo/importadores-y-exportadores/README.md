# Importers and exporters
<!-- id: importadores-y-exportadores -->
<!-- origen: c9100fe3f75637b0b2f6f5fec8144677eef310f4 -->

Digi3D.AI reads and writes file formats through **importers and exporters**. Each declares its capabilities:

* **Import**: read the format with [IMPORT](../ordenes/i/importar.md).
* **Export**: write the format with [EXPORT](../ordenes/e/exportar.md).
* **Direct access**: select the format directly when opening or saving a drawing window, without IMPORT/EXPORT.

Pass format parameters with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md), or as IMPORT/EXPORT parameters. Each format page describes them.

| Format | Extensions | Imports | Exports | Direct access |
| :--- | :--- | :---: | :---: | :---: |
| [ArcGIS DEM](arcgis-dem.md) | `.asc` | Yes | No | Yes |
| [Adobe PDF files](pdf.md) | `.pdf` | No | Yes | No |
| [Digi ASCII files](ascii-de-digi.md) | `.asc` | Yes | Yes | No |
| [Kork ASCII files](kork.md) | `.lst` | Yes | Yes | No |
| [AutoCAD DWG files](dwg.md) | `.dwg` | Yes | Yes | Yes |
| [AutoCAD DXF files](dwg.md) | `.dxf` | Yes | Yes | No |
| [Blend files](blend.md) | `.blend` | Yes | Yes | Yes |
| [GeoMedia Datawarehouse files](geomedia.md) | `.mdb` | Yes | Yes | Yes |
| [PostGIS connection files](postgis.md) | `.pg` | Yes | Yes | Yes |
| [Leica Pegasus spherical image orientation files](imagen-esferica.md) | `.csv`, `.e57`, `.ptx`, `.spherical` | Yes | No | No |
| [DGNv8 files](dgn.md) | `.dgn` | Yes | Yes | Yes |
| [Digi files](bin.md) | `.bin`, `.bik` | Yes | Yes | Yes |
| [Double-precision Digi files](bin-doble-precision.md) | `.bind` | Yes | Yes | Yes |
| [Esri FileGdb files](filegdb.md) | `.gdb` | Yes | Yes | Yes |
| [FICC files](ficc.md) | `.a`, `.p`, `.s`, `.t`, `.x` | Yes | No | No |
| [GeoJSON files](geojson.md) | `.geojson` | Yes | Yes | No |
| [GeoPackage files](geopackage.md) | `.gpkg` | Yes | Yes | Yes |
| [IFC files](ifc.md) | `.ifc` | Yes | Yes | No |
| [Google Earth KML files](kml.md) | `.kml` | Yes | Yes | Yes |
| [PointCloud files](pointcloud.md) | `.las`, `.pts`, `.e57`, `.ptx`, `.laz` | Yes | No | No |
| [Scalable Vector Graphics files](svg.md) | `.svg` | Yes | Yes | No |
| [ESRI Shapefile files](shp.md) | `.shp` | Yes | Yes | Yes |
| [SketchUp files](sketchup.md) | `.skp` | Yes | Yes | Yes |
| [Latino VEC files](vec.md) | `.vec` | Yes | Yes | No |
| [Well Known Text files](wkt.md) | `.wkt` | Yes | Yes | Yes |
| [Raster images](raster.md) | — | Yes | No | Yes |
| [DTM (digital terrain model)](mdt.md) | `.mdt` | Yes | No | No |
| [OpenStreetMap (slippy map)](osm-slippy-map.md) | `.osms` | Yes | No | No |
| [OpenStreetMap (OSM)](osm.md) | `.osm` | Yes | No | No |
| [Photomod](photomod.md) | — | Yes | Yes | No |
| [Comma-separated values](csv.md) | `.csv`, `.txt` | Yes | No | No |
| [WMS (Web Map Service)](wms.md) | `.wmsconnection` | Yes | No | Yes |

## Parameters when creating and opening files

When creating, opening, importing, or exporting a file, **Import/export engine** in the dialogs shows format properties. Some formats open additional dialogs, and almost all need a coordinate reference system. Each format page describes properties, dialogs, and reference systems under **Import/export engine parameters**.

| Format | Engine properties | Dialogs when opening or creating | Coordinate reference system |
| :--- | :--- | :--- | :--- |
| [ArcGIS DEM](arcgis-dem.md) | None | — | `.prj` file; requested if absent |
| [Adobe PDF files](pdf.md) | Paper size<br>Print scale<br>Use symbology<br>Title | — | — |
| [Digi ASCII files](ascii-de-digi.md) | Coordinate reference system<br>Decimals | — | `.prj` file; otherwise the engine property on import, or requested |
| [AutoCAD DWG files](dwg.md) | Template file<br>Version<br>Import blocks as<br>Import blocks<br>Import route<br>Import palette<br>Use drawing file colors | — | `.prj` file; requested if absent |
| [AutoCAD DXF files](dwg.md) | DWG properties<br>File type | — | `.prj` file; requested if absent |
| [GeoMedia Datawarehouse files](geomedia.md) | Horizontal coordinate reference system | Table selection, if enabled in configuration | First layer system; engine property if no layers |
| [PostGIS connection files](postgis.md) | Server<br>Port<br>User<br>Password<br>Database<br>Read only the geometries that have the following values | Table selection, if enabled in configuration | EPSG code of the first table |
| [Leica Pegasus spherical image orientation files](imagen-esferica.md) | None | — | `.prj` file; requested if absent |
| [DGNv8 files](dgn.md) | Code criteria<br>Template file<br>Extract cells from<br>Cell file<br>Transform the cell entity level<br>Import palette<br>Entity colors<br>Import cells as<br>Registry spline increase<br>Unknown format<br>Symbology resource files | — | `.prj` file; requested if absent |
| [Digi files](bin.md) | Precision decimals<br>Global origin X, Y, Z | — | `.prj` file; requested if absent |
| [Double-precision Digi files](bin-doble-precision.md) | Data model<br>Connection string<br>Connect in read-only mode<br>Skip loading reference files | — | Stored in the file; requested when creating it |
| [Esri FileGdb files](filegdb.md) | None | Dataset selection, always | Selected dataset system |
| [GeoJSON files](geojson.md) | None | — | Fixed: WGS 84 (EPSG 4979) |
| [GeoPackage files](geopackage.md) | None | Table selection, if enabled in configuration<br>System selection if layers use several systems | Layer system; requested if absent |
| [IFC files](ifc.md) | None | — | — |
| [Google Earth KML files](kml.md) | Title<br>Description | — | Fixed: WGS 84 with EGM96 heights |
| [PointCloud files](pointcloud.md) | None | Level of detail file creation progress | `.las` header; requested if absent |
| [Scalable Vector Graphics files](svg.md) | Drawing width | — | — |
| [ESRI Shapefile files](shp.md) | Precision decimals<br>Encoding<br>Load region of interest (BETA) | Table selection, if enabled in configuration | First layer system; requested if no layers |
| [Latino VEC files](vec.md) | None | — | Photogrammetric or drawing window system |
| [Well Known Text files](wkt.md) | None | — | Requested; not saved |
| [Raster images](raster.md) | Compress<br>Pyramidal level | — | Image georeferencing; if absent, requested and saved in a `.prj` |
| [DTM (digital terrain model)](mdt.md) | None | — | `.prj` file; requested if absent. Must match the drawing window system |
| [OpenStreetMap (slippy map)](osm-slippy-map.md) | None | — | Fixed: WGS 84 (EPSG 4326) |
| [Comma-separated values](csv.md) | Field separator<br>Column X, Column Y, Column Z | — | `.prj` file; requested if absent |
| [WMS (Web Map Service)](wms.md) | None | Server connection and layer selection | Layer system |

A dash means the format has no separate dialog or its page does not document a reference system.
