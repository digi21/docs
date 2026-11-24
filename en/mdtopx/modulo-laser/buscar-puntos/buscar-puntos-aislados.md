# Find isolated points
<!-- id: buscar-puntos-aislados -->
<!-- origen: 9e7d40df25d53902fac4568b5ef44e24b66d0815 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies isolated LiDAR points with no nearby neighbors, usually due to incorrect elevations.

![Find isolated points dialog](../../../images/image-161.png)

Required parameters:

* **Maximum distance among points**: maximum neighbor distance, based on point density. Excessive values include distant points; insufficient values leave points with no related neighbors.
* **Minimum number of neighbors**: minimum nearby point count for a point to be considered non-isolated.
* **Target type**: classification assigned to points meeting the calculation conditions.
* **Iterate while more than x points are classified**: iterations may improve classification. The program repeats automatically while the classified count exceeds this minimum, stopping when it no longer does.
* **Work only on the current selection**: processes only currently selected points.

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
