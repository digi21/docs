# Ubicación del sistema de Referencia de Coordenadas en función del tipo de archivo de dibujo

Algunos formatos de archivo de dibujo incorporan el sistema de referencia de coordenadas asociado en el propio archivo \(como es el caso de los archivos [.bind]()\). Otros formatos de archivo de dibujo no están preparados para almacenar dentro del propio archivo el sistema de referencia de coordenadas asociado, de modo que éste se almacena en un archivo con extensión [.prj]() mediante una cadena [Well Known Text](CadenasWellKnownText.html)_._

En la siguiente tabla puedes ver la ubicación de la información referente al sistema de referencia de coordenadas asociado a cada tipo de extensión de archivos de dibujo soportados por Digi3D.NET:

| Extensión | Formato de archivo de dibujo | Ubicación del sistema de referencia de coordenadas |
| :--- | :--- | :--- |
| _.asc_ | Archivos ASCII de Digi | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.bin_ | Archivos Digi de precisión simple | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.bind_ | Archivos Digi de doble precisión | En el propio archivo. |
| _.csv_ | Archivos valores separados por comas | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.dem_ | Archivos ArcGIS DEM | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.dgn_ | Archivos MicroStation v8 | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.dwg_, _.dxf_ | Archivos AutoCAD | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.las_ | Archivos Laser Scan \(LIDAR\) | Dentro del propio archivo _.las_ o en un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.mdb_ | Archivos Datawarehouse de Geomedia | Dentro de la propia base de datos. |
| _.mdt_ | Archivos MDTopX | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.xyz_ | Archivos puntos | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |

Ortofotos cargadas en la ventana de dibujo:

| Extensión | Formato de archivo de dibujo | Ubicación del sistema de referencia de coordenadas |
| :--- | :--- | :--- |
| _.bmp_ | Ortofotos en formato BMP | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.ecw_ | Ortofotos en formato ECW | En el propio archivo. |
| _.jpg_, _.jif_, _.jpe_, _.jpeg_ | Ortofotos en formato JPEG | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.sid_ | Ortofotos en formato MrSID | En un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.tif_, _.tiff_ | Ortofotos en formato TIFF | Si son GeoTIFF, en el propio archivo. Si no, en un archivo con el mismo nombre que el archivo de dibujo pero con extensión [.prj](). |
| _.wmsconnection_ | Servicios Web Map Service | Lo define la capa a la que te conectes. |

