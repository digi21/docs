# Find gaps
<!-- id: buscar-huecos -->
<!-- origen: 9c752ecaf3d508d20d5e7baf0e712c6b742f1210 -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Generates vector entities defining gaps in LiDAR coverage, useful for detecting water-covered areas where the laser does not return, such as ponds or swimming pools.

The tool looks for jumps in GPS time between consecutive points of the scan, so it needs points with GPS time: point sets without GPS time are skipped.

![Find gaps dialog](../../../images/image-175.png)

Dialog fields:

* **Boundary code**: code for vector entities defining detected gaps.
* **Maximum distance among points**: maximum neighbor distance, based on point density. Excessive values include distant points; insufficient values leave points with no related neighbors.
* **Minimum surface area**: regions below this area are not considered gaps. Also specify the **area type**.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
