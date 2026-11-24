# Find elevated points
<!-- id: buscar-puntos-elevados -->
<!-- origen: ffb9cbd289b33aa470559dde87d59df361c83b6c -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Finds and classifies LiDAR points that stand above their surroundings, by their geometric relationships with neighboring points. Optionally it can also take the color or the intensity of the points into account, to classify only certain objects with a particular radiometric or laser response.

![Find elevated points dialog](../../../images/image-160.png)

## Filter

The **Filter** drop-down sets what is taken into account besides the geometry:

* **None (geometry only)**: points are classified only by their height above their neighbors.
* **Color (RGB)**: elevated points whose color resembles that of one of the conditions in the list are classified. Not all LiDAR files store color in their points; it can be added afterwards with [Assign RGB color to points](/mdtopx/modulo-laser/editar/asignar-color-rgb-a-puntos.md).
* **Intensity**: elevated points whose intensity falls within the range of one of the conditions in the list are classified.

The dialog remembers the last filter used.

## No filter

* **Minimum height**: minimum height difference from any neighbor required to change a point's classification.
* **Target type**: classification assigned to points meeting the calculation conditions.
* **Low vegetation (do not find surfaces)**: enable when finding low vegetation with small height differences, preventing the program from finding enclosed surfaces among classified points and potentially classifying unwanted points. Enabling it disables the next option.
* **If the generated surface exceeds x m²**: after classifying points, the program finds surfaces to include interior points. A surface exceeding this area can receive another target classification.
* **Target type**: classification for points forming a surface larger than the preceding threshold.

## Color or intensity filter

![Find elevated points dialog with the color filter](../../../images/buscar-puntos-elevados-color.png)

* **List of conditions**: conditions points must meet to be classified, managed with the **Add**, **Edit** and **Delete** buttons (also with the `Insert` and `Delete` keys, and by double-clicking a condition to edit it). Each condition has its own minimum height above its surroundings and its own target type, plus:
  * with the color filter, a color defined by its RGB components and a tolerance margin for each component;
  * with the intensity filter, an intensity range defined by a minimum and a maximum.

The color and intensity lists are independent: switching filters does not lose the other list. With a filter, **OK** stays disabled while the list is empty.

## Common fields

* **Maximum distance among points**: maximum neighbor distance, based on point density. Excessive values include distant points; insufficient values leave points with no related neighbors.
* **Iterate while more than x points are classified**: iterations may improve classification. The program repeats automatically while the classified count exceeds this minimum, stopping when it no longer does.
* **Work only on the current selection**: processes only currently selected points.

The program processes the current file, displaying partial results in the [Results pane](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). **Cancel** asks whether to retain calculations completed so far.

See also:

* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
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
