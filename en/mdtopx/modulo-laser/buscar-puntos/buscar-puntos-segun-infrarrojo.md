# Find points by infrared
<!-- id: buscar-puntos-segun-infrarrojo -->
<!-- origen: 8fa579d71469215ec40b2a9c56ca24730b3f913a -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Classifies points by NDVI calculated from stored infrared values. Each point must store false color composed of near-infrared, red and blue.

![Find points by infrared dialog](../../../images/image-174.png)

Dialog fields:

* **Select source typologies**: classifications to consider.
* **Work only on the current selection**: processes only currently selected points.
* **Target type**: classification assigned to points meeting the calculation conditions.
* **Calculation mode**: classifies by high or low NDVI. The lower slider selects a high or low difference between calculated indices. Use a high difference when false color is clear and well defined, a low difference otherwise.
  * _High level IR_: high-NDVI points, for example reclassifying selected Building points with high NDVI as Vegetation.
  * _Low level IR_: low-NDVI points, for example reclassifying selected Vegetation points with low NDVI as Building.

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
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Find ground points only](solo-suelo.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
