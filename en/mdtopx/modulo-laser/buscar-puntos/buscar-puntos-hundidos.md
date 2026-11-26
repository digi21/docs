# Find sunken points
<!-- id: buscar-puntos-hundidos -->
<!-- origen: a792603efdeae95c9a48b93425e771187eaaa412 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies LiDAR points much lower than their surroundings, usually due to incorrect elevations (low noise).

![Find sunken points dialog](../../../images/image-163.png)

Required parameters:

* **Neighbor search radius**: a point's neighbors are the points closer than this distance in plan. It depends on point density.
* **Difference relative to standard deviation**: a point is sunken if its elevation is below the mean elevation of its neighbors by more than this number of standard deviations of those elevations.
* **Only if isolated in 3D (one neighbor at most)**: in addition, the point must have at most one neighbor closer than the radius in 3D. Low points that are terrain, such as the bottom of a ditch, have other points nearby; noise hardly ever does. On by default.
* **Target type**: class assigned to sunken points.
* **Iterate while more than x points are classified**: points already classified no longer count as neighbors, so the next pass may find others. The program repeats while a pass classifies more points than this number.
* **Work only on the current selection**: only selected points are searched, and only they count as neighbors.

How the program decides which points are sunken:

1. Vegetation (classes 3, 4 and 5), building (6) and noise (7) points, and points of the target type, are neither searched nor counted as neighbors.
2. Only points with some neighbor more than 30° above are examined.
3. A point with fewer than 3 neighbors is not classified.
4. The point is sunken if it meets the standard deviation condition and, with the check box on, the 3D isolation condition.

On a PNOA tile of 4.8 million unclassified points, with a 2 m radius and 3 standard deviations, the search with iterations takes about 4 seconds. The 3D isolation check box removes a third of the flagged points and keeps almost all the real noise.

With reference drawings loaded, the tool uses the previous method, which triangulates the cloud: it is much slower and has no 3D isolation check box.

The program processes the current file, displaying partial results in the [Results pane](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). **Cancel** asks whether to retain calculations completed so far.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
