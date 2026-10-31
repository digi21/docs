# Preprocess
<!-- id: preprocesar -->
<!-- origen: 49f2f7d22e2348be261b3f1f84150d3f92a84405 -->

[Laser point view](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/vista-de-puntos-laser.md)

Processes a LiDAR file without opening or displaying it. Change coordinates or split the file into parts, useful for large files.

![Preprocessing LiDAR files dialog](../../../images/image-12.png)

Required parameters:

* **Source file**: input file name. Use the button to the right to select it in Windows Explorer. After specifying it, **Information** opens [Laser Doc properties](propiedades-documento-laser.md) with its contents. Reading options:
  * _Keep the original order_: processes points in file order.
  * _Sort by GPS Time_: reads once to sort by GPS time before processing.
  * _Sort by position over a track_: projects points onto an axis line and sorts by projected position. The axis can be stored as BIN, DXF, DGN or Shape.
  * _Sort by position in a grid_: sorts by a grid whose cell dimensions are set with **Size X** and **Size Y**.
* **Output point cloud**: defines the resulting cloud.

  Specify the **Maximum number of points** in each output file and use all points or one point in every specified count.&#x20;
* **Output files**:
  * _Name_: output file name. Hash signs represent indices when splitting files. For example, "Salida\_##.LAS" generates "Salida\_01.LAS", "Salida\_02.LAS", and so on.
  * _Type_: output file format.
  * _Folder_: output storage folder.
* **Data transformation**: optional coordinate change, from _Cartesian coordinates to UTM_ or _Geographic coordinates to UTM_.
