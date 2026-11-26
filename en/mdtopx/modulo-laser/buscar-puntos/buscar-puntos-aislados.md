# Find isolated points
<!-- id: buscar-puntos-aislados -->
<!-- origen: 6d05d6e174997e0c17cd7996ba6f27f5099617a9 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies isolated LiDAR points, with few points nearby, usually due to incorrect elevations.

![Find isolated points dialog](../../../images/image-161.png)

Required parameters:

* **Maximum distance among points**: two points are neighbors if they are closer than this distance in 3D. It depends on point density: with too high a value hardly any point is isolated, and with too low a value many are.
* **Minimum number of neighbors**: a point with fewer neighbors than this number is isolated.
* **Target type**: class assigned to isolated points.
* **Iterate while more than x points are classified**: points already classified no longer count as neighbors, so in the next pass the points next to them may become isolated. The program repeats while a pass classifies more points than this number.
* **Work only on the current selection**: only selected points are searched, and only they count as neighbors.

Vegetation (classes 3, 4 and 5), building (6) and noise (7) points, and points of the target type, are neither searched nor counted as neighbors.

Until November 2026, the tool only counted as neighbors the points joined to the point by an edge of the cloud's triangulation. It now counts all the points closer than the distance, so it flags far fewer: on a PNOA tile of 4.8 million points, with 3 m and 3 neighbors, 37,216 points instead of 324,330, in 5 seconds instead of more than 3 minutes.

With reference drawings loaded, the tool uses the previous method, with the triangulation.

The program processes the current file, displaying partial results in the [Results pane](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). **Cancel** asks whether to retain calculations completed so far.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
