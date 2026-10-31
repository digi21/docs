# Find points on walls
<!-- id: buscar-puntos-en-paredes -->
<!-- origen: 6b5cb63c78efbab81cba2373e71846f6472b720f -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies LiDAR points on vertical surfaces such as building facades. Often unwanted, these points can be assigned an auxiliary classification and deleted later.

![Find points in walls dialog](../../../images/image-169.png)

Required parameters:

* **Select source typologies**: classifications in which to find wall points.
* **Work only on the current selection**: processes only currently selected points.
* **Target type**: classification assigned to points meeting the calculation conditions.
* **Maximum distance among points**: maximum distance for points to be considered vertically aligned. Keep it small, close to LiDAR horizontal precision. Unlike other tools, this value does not correspond to point density.
* **Minimum number of points**: vertically aligned points needed to identify a facade.
* **Minimum height**: minimum height difference from any neighbor required to change a point's classification.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points by intensity difference](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-por-diferencia-de-intensidad.md)
* [Find points by flight line](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-linea-de-vuelo.md)
* [Find points by geometry plus RGB](buscar-puntos-segun-geometria-mas-rgb.md)
* [Find points by geometry plus intensity](buscar-puntos-segun-geometria-mas-intensidad.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
