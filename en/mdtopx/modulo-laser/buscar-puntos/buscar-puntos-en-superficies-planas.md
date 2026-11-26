# Find points on flat surfaces
<!-- id: buscar-puntos-en-superficies-planas -->
<!-- origen: 29ad355eef8b552207becb17a9176105d917e344 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies points on flat surfaces with a maximum slope and minimum area, particularly building roofs. First classify elevated points using the appropriate tools to isolate potentially building-related points. Select only those elevated classifications here, avoiding flat surfaces on the ground.

![Flat surfaces dialog](../../../images/image-168.png)

Required parameters:

* **Select source typologies**: classifications in which to find surface points.
* **Work only on the current selection**: processes only currently selected points. Only the selected points change; the ground the height is measured from is always that of the whole file.
* **Target type**: classification assigned to points meeting the calculation conditions.
* **Maximum distance among points**: maximum neighbor distance, based on point density. Excessive values include distant points; insufficient values leave points with no related neighbors.
* **Minimum surface area**: area that neighboring points forming a flat surface must exceed.
* **Maximum surface slope**: maximum surface slope, in degrees.
* **Minimum height**: minimum height of the surface above the ground. The ground is formed by the points of the Ground type (class 2) of the whole file, so classify them first, for example with [Find ground points only](solo-suelo.md). Surfaces outside the area with ground are not classified. If the file has no ground points, the tool cannot measure this height and ignores it.
* **Point elevation precision**: maximum standard deviation, in meters, of the points from the plane of the surface. With a small value, noisy roofs are not considered flat.

Inside the outline of each surface found, the points of the source types at the minimum height or more above the ground change to the target type. Points of other types, for example vegetation covering part of a roof, do not change.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)

[Watch video: Find buildings in a LiDAR file](https://youtu.be/qm8dz4AmSRQ)
