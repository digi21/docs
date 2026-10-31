# Specifying the sensor's coordinate reference system
<!-- id: especificacion-src-sensor -->
<!-- origen: ca13d61983082bfa001838147638a2ffcc21b18b -->

Every sensor has an associated coordinate reference system. Some have a fixed system, while others have a variable one.

The following table shows coordinate reference systems associated with each sensor implemented by Digi3D.AI.

| Sensor | Supported coordinate reference systems |
| :--- | :--- |
| RPC satellite | The rational polynomial coefficients (RPC) sensor always works in [EPSG:4979](http://spatialreference.org/ref/epsg/4979/). EPSG:4979 is identical to [EPSG:4326](http://spatialreference.org/ref/epsg/4326/), but is three-dimensional (3D) geographic, with ellipsoidal Z coordinates, rather than two-dimensional (2D) geographic. |
| VM Quasi-Panoramic | This sensor always works in [EPSG:4979](http://spatialreference.org/ref/epsg/4979/). EPSG:4979 is identical to [EPSG:4326](http://spatialreference.org/ref/epsg/4326/), but is 3D geographic, with ellipsoidal Z coordinates, rather than 2D geographic. |
| ADS 40/80 | This sensor always works in [EPSG:4979](http://spatialreference.org/ref/epsg/4979/). EPSG:4979 is identical to [EPSG:4326](http://spatialreference.org/ref/epsg/4326/), but is 3D geographic, with ellipsoidal Z coordinates, rather than 2D geographic. |
| Orthophoto | Obtains its coordinate reference system from the orthophoto's orientation. If the orthophoto is a GeoTiff providing coordinate reference system information, the sensor uses that system. If the orthophoto provides no such information and a [.prj](http://en.wikipedia.org/wiki/Shapefile) file exists, Digi3D.AI assigns the system specified in the .prj file. Without information in the orthophoto or a .prj file, both vertical and horizontal coordinate reference systems are unknown. |
| Stereo orthophoto | Obtains its coordinate reference system from the orthophoto's orientation. If the orthophoto is a GeoTiff providing coordinate reference system information, the sensor uses that system. If the orthophoto provides no such information and a [.prj](http://en.wikipedia.org/wiki/Shapefile) file exists, Digi3D.AI assigns the system specified in the .prj file. Without information in the orthophoto or a .prj file, both vertical and horizontal coordinate reference systems are unknown. |
| Web Map Service | Uses the coordinate reference system chosen in the sensor panel from those supported by the Web Map Service (WMS) server for the layer. If no layer is selected, the system is local. |
| Web Map Tile Service | Uses the coordinate reference system of the tile matrix chosen in the sensor panel. If no layer is selected or Digi3D.AI does not recognize the system, a local system is used. |
| Conic | If you load a model without associated absolute orientation or aerotriangulation, its coordinate reference system is Local horizontal + Local vertical. If the model has aerotriangulation and its file provides a coordinate reference system internally, that system is selected. Currently, only Inpho *.prj* files provide their coordinate reference system internally. If the aerotriangulation file provides no system internally, but a *.prj* file specifying one is found in the aerotriangulation file's directory, that *.prj* file's system is selected. If neither the aerotriangulation file provides a system nor a .prj file is found, Local horizontal + Local vertical is selected. If an absolute orientation file providing a coordinate reference system is found, its system replaces the one supplied by the aerotriangulation file. |
