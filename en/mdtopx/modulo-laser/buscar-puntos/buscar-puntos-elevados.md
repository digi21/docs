# Find elevated points
<!-- id: buscar-puntos-elevados -->
<!-- origen: 359168e32821d2d2530f12f2fcd164800fa0491b -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies LiDAR points by their geometric relationships with surrounding points.

![Find elevated points dialog](../../../images/image-160.png)

Required parameters:

* **Maximum distance among points**: maximum neighbor distance, based on point density. Excessive values include distant points; insufficient values leave points with no related neighbors.
* **Minimum height**: minimum height difference from any neighbor required to change a point's classification.
* **Low vegetation (do not find surfaces)**: enable when finding low vegetation with small height differences, preventing the program from finding enclosed surfaces among classified points and potentially classifying unwanted points.
* **Iterate while more than x points are classified**: iterations may improve classification. The program repeats automatically while the classified count exceeds this minimum, stopping when it no longer does.
* **Work only on the current selection**: processes only currently selected points.
* **Target type**: classification assigned to points meeting the calculation conditions.
* **If the generated surface exceeds x m2**: after classifying points, the program finds surfaces to include interior points. A surface exceeding this area can receive another target classification.
* **Target type**: classification for points forming a surface larger than the preceding threshold.

The program processes the current file, displaying partial results in the [Results pane](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). **Cancel** asks whether to retain calculations completed so far.

See also:

* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points by intensity difference](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-por-diferencia-de-intensidad.md)
* [Find points by flight line](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-linea-de-vuelo.md)
* [Find points by geometry plus RGB](buscar-puntos-segun-geometria-mas-rgb.md)
* [Find points by geometry plus intensity](buscar-puntos-segun-geometria-mas-intensidad.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
