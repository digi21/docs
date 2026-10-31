# Find points
<!-- id: buscar-puntos -->
<!-- origen: bd0102956ae19d7e165bef8d331810288121a831 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Tools for segmenting a point cloud:

* [**Elevated**](buscar-puntos-elevados.md): finds and classifies LiDAR points by their geometric relationships with surrounding points.
* [**Isolated**](buscar-puntos-aislados.md): finds and classifies isolated points with no nearby neighbors, usually due to incorrect elevations.
* [**Airborne**](buscar-puntos-aereos.md): finds and classifies points much higher than their surroundings, usually due to incorrect elevations.
* [**Sunken**](buscar-puntos-hundidos.md): finds and classifies points much lower than their surroundings, usually due to incorrect elevations.
* [**Intensity difference**](buscar-puntos-por-diferencia-de-intensidad.md): finds and classifies points by intensity differences from their surroundings.
* [**By flight line**](buscar-puntos-segun-linea-de-vuelo.md): finds and classifies points by geometric relationships with points recorded before or after them during flight.
* [**Geometry plus RGB**](buscar-puntos-segun-geometria-mas-rgb.md): finds and classifies points using surrounding geometry and assigned colors.
* [**Geometry plus intensity**](buscar-puntos-segun-geometria-mas-intensidad.md): finds and classifies points using surrounding geometry and assigned intensities.
* [**Flat surfaces**](buscar-puntos-en-superficies-planas.md): finds and classifies points on flat surfaces with a maximum slope and minimum area, particularly building roofs.
* [**Walls**](buscar-puntos-en-paredes.md): finds and classifies points on vertical surfaces such as building facades.
* [**Ground only**](solo-suelo.md): quickly finds ground points.
* [**Magic Surface**](superficie-magica/): automatically finds and classifies LiDAR points by combining search algorithms and tools.
* [**Find neighbors**](buscar-vecinos.md): finds neighboring points by classification.
* [**Infrared**](buscar-puntos-segun-infrarrojo.md): finds and classifies points by stored infrared value.
* [**Gaps**](buscar-huecos.md): finds and classifies LiDAR points on vertical surfaces such as building facades.
* [**Surface area**](buscar-puntos-segun-area.md): finds and classifies points by the area formed with neighboring points of the same classification.
