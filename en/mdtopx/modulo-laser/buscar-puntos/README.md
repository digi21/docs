# Find points
<!-- id: buscar-puntos -->
<!-- origen: b29e36f3d8322fff42f1d48305c5c6482b7d6bd3 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Tools for segmenting a point cloud:

* [**Elevated**](buscar-puntos-elevados.md): finds and classifies LiDAR points by their geometric relationships with surrounding points, with an optional color (RGB) or intensity filter.
* [**Isolated**](buscar-puntos-aislados.md): finds and classifies isolated points with no nearby neighbors, usually due to incorrect elevations.
* [**Airborne**](buscar-puntos-aereos.md): finds and classifies points much higher than their surroundings, usually due to incorrect elevations.
* [**Sunken**](buscar-puntos-hundidos.md): finds and classifies points much lower than their surroundings, usually due to incorrect elevations.
* [**Flat surfaces**](buscar-puntos-en-superficies-planas.md): finds and classifies points on flat surfaces with a maximum slope and minimum area, particularly building roofs.
* [**Walls**](buscar-puntos-en-paredes.md): finds and classifies points on vertical surfaces such as building facades.
* [**Ground only**](solo-suelo.md): quickly finds ground points.
* [**Magic Surface**](superficie-magica/): automatically finds and classifies LiDAR points by combining search algorithms and tools.
* [**Find neighbors**](buscar-vecinos.md): finds neighboring points by classification.
* [**Infrared**](buscar-puntos-segun-infrarrojo.md): finds and classifies points by stored infrared value.
* [**Gaps**](buscar-huecos.md): generates vector entities with the gaps in LiDAR coverage, such as water-covered areas where the laser does not return. Requires the GPS time of the points.
* [**Surface area**](buscar-puntos-segun-area.md): finds and classifies points by the area formed with neighboring points of the same classification.
