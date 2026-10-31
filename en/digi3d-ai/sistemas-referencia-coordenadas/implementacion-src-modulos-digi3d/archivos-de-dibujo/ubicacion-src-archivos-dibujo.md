# Coordinate reference system location by drawing file type
<!-- id: ubicacion-src-archivos-dibujo -->
<!-- origen: 0766aee217e17be1dd13c1d227d9ad03b40e2dfa -->

Some drawing file formats store their associated coordinate reference system within the file itself \(such as [.bind](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/bin-doble-precision.md) files\). Other formats cannot store it internally, so it is saved as a [Well Known Text](https://es.wikipedia.org/wiki/Well_Known_Text) string in a .prj file.

The table shows where the coordinate reference system information is stored for each drawing file extension supported by Digi3D.AI:

| Extension | Drawing file format | Coordinate reference system location |
| :--- | :--- | :--- |
| _.asc_ | Digi ASCII files | In a file with the same name as the drawing file and extension .prj. |
| _.bin_ | Single-precision Digi files | In a file with the same name as the drawing file and extension .prj. |
| _.bind_ | Double-precision Digi files | In the file itself. |
| _.csv_ | Comma-separated value files | In a file with the same name as the drawing file and extension .prj. |
| _.dem_ | ArcGIS DEM files | In a file with the same name as the drawing file and extension .prj. |
| _.dgn_ | MicroStation v8 files | In a file with the same name as the drawing file and extension .prj. |
| _.dwg_, _.dxf_ | AutoCAD files | In a file with the same name as the drawing file and extension .prj. |
| _.las_ | Laser scan \(LIDAR\) files | In the _.las_ file itself or a file with the same name as the drawing file and extension .prj. |
| _.mdb_ | GeoMedia Datawarehouse files | In the database itself. |
| _.mdt_ | MDTopX files | In a file with the same name as the drawing file and extension .prj. |
| _.xyz_ | Point files | In a file with the same name as the drawing file and extension .prj. |

Orthophotos loaded in the drawing window:

| Extension | Drawing file format | Coordinate reference system location |
| :--- | :--- | :--- |
| _.bmp_ | BMP orthophotos | In a file with the same name as the drawing file and extension .prj. |
| _.ecw_ | ECW orthophotos | In the file itself. |
| _.jpg_, _.jif_, _.jpe_, _.jpeg_ | JPEG orthophotos | In a file with the same name as the drawing file and extension .prj. |
| _.sid_ | MrSID orthophotos | In a file with the same name as the drawing file and extension .prj. |
| _.tif_, _.tiff_ | TIFF orthophotos | For GeoTIFF, in the file itself. Otherwise, in a file with the same name as the drawing file and extension .prj. |
| _.wmsconnection_ | Web Map Service services | Defined by the layer you connect to. |
