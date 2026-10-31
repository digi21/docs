# Magic Surface
<!-- id: superficie-magica -->
<!-- origen: a6faad5d807f5b942f82a0e2aac64b975b65ae46 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Automatically finds and classifies LiDAR points by intelligently combining the program's algorithms and tools. It chooses algorithms and parameters according to file and area type, avoiding manual decisions at each stage.

![Magic surface dialog](../../../../images/image-171.png)

Required parameters:

* **Max distance among points**: maximum neighbor distance. Two or three times nominal scan spacing is recommended.
* **Min height to aerial points**: minimum height difference above surroundings for airborne classification. Set 0 to ignore.
* **Min height to buildings**: minimum height difference above surroundings for building classification. Set 0 to ignore.
* **Max height to high vegetation**: maximum height difference above surroundings for vegetation classification. Set 0 to ignore.
* **Min height to high vegetation**: minimum height difference above surroundings for high vegetation. Set 0 to ignore.
* **Min height to medium vegetation**: minimum height difference above surroundings for medium vegetation. Set 0 to ignore.
* **Min height to low vegetation**: minimum height difference above surroundings for low vegetation. Set 0 to ignore.
* **Point height accuracy**: elevation definition precision.
* **Point Search level**: 1 to 10. Lower values perform more exhaustive searches, repeating some included processes.
* **Smooth profiles**: assuming data were acquired along lines, smooths points first to remove irregularities. This may also remove characteristic terrain features.
* **Only in the selection**: calculates only points selected on screen before running the tool.
* **Use intensity**: includes intensity in classification. It can distinguish ground and objects with high contrast, such as olive groves or vineyards; not recommended for other situations.
* **Auto sort**: first sorts points by GPS time, useful after merging point groups.
* **Max intensity value of vegetation**: maximum intensity for vegetation classification when the preceding option is enabled, from 0 to 255.
* **Min surface area of buildings**: areas below this value are not considered buildings.
* **Max surface slope of buildings**: maximum slope of a surface considered a building.
* **Max different height in buildings**: maximum elevation difference within a potential building area.
* **LiDAR point cloud**: enable for laser measurements; disable for photogrammetric multi-image correlation clouds.
* **Terrestrial register**: enable for terrestrial acquisition, whose resolution and precision are much higher than airborne acquisition.
* **Use infrared**: uses point infrared values. Requires false color IR-R-B to calculate NDVI, identifying vegetation and distinguishing it from buildings.
* **Difference**: NDVI sensitivity when infrared is enabled. Use near 1 when vegetation infrared values are poorly defined, near 10 otherwise.
* [**Codes**](codigos-lidar.md): classification values for secondary points.

The program processes the current file, displaying partial results in the [Results pane](../../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). **Cancel** asks whether to retain calculations completed so far. If the current view colors points by LiDAR classification, it updates to display progress in real time.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points by intensity difference](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-por-diferencia-de-intensidad.md)
* [Find points by flight line](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-linea-de-vuelo.md)
* [Find points by geometry plus RGB](../buscar-puntos-segun-geometria-mas-rgb.md)
* [Find points by geometry plus intensity](../buscar-puntos-segun-geometria-mas-intensidad.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](../solo-suelo.md)
* [Find neighboring points](../buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](../buscar-puntos-segun-area.md)
* [Find points on user planes](../../formas-geometricas/buscar-puntos-sobre-planos.md)
