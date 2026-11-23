# Smooth cloud
<!-- id: suavizar-nube -->
<!-- origen: 0b0326a609dbfbd17f310ae3d65c69d5067a67d6 -->

[Edit points in LiDAR files](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/editar-puntos-en-archivos-lidar.md)

Smooths the elevations of an airborne LiDAR point cloud along the scan lines of the flight. Before smoothing, it classifies the points that stick out above or sink below their neighbors on the line, so that they do not distort the profile.

![Smooth cloud dialog](../../../images/image-165.png)

The points must be in the order in which they were recorded. If they are not, you can sort them by GPS time with [Sort LiDAR points](ordenar-puntos-lidar.md).

## How it works

The tool walks through the points of each flight line in recording order and groups them into scan lines: runs of consecutive points that are aligned in plan, with a tolerance of 30 cm. A scan line ends when the next point is no longer aligned or when the gap to it is too large. The program computes that gap from the point cloud itself, using the mean distance between consecutive points and its standard deviation.

Only unclassified and ground points (classes 0, 1 and 2) are processed. Points of other classes do not change and are not used for the profile.

On each scan line, the tool does the following:

1. Compares the elevation of each point with the elevations of the previous and the next point on the line:
   * If the point is above both by more than one of the heights in the dialog, it moves to the class of that height. The heights are tested from highest to lowest: aerial points, building, high vegetation, medium vegetation and low vegetation. The classes are those of the application catalog: high noise (18) for aerial points, building (6) and high (5), medium (4) and low (3) vegetation.
   * If it is below both by more than 3 m, it moves to the low noise class (7).
   * If it is on a steep step, with a height difference greater than the low vegetation height, it moves to the wall class (91).
   * If the first or the last point of the line differs from its neighbor by more than the building height, it moves to the building class.
2. Looks for small objects, a few points long, that rise and fall back by more than one of the heights, and moves their points to medium vegetation.
3. Computes the smoothed profile of the line with a B-spline. If a point departs sharply from the profile, it moves the point to medium vegetation or splits the line in two at that point.
4. Repeats the previous steps until no more points are classified.
5. **Changes the elevation** of the points left on the line to the elevation of the smoothed profile. The end points of the line keep their elevation.

Points that move to another class keep their elevation.

When it finishes, the [Results pane](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md) shows the number of classified points, the mean height difference and the mean distance between consecutive points of the scan lines.

The tool changes the coordinates of the points. You can undo the result with **Undo**. If you cancel the process, the point cloud stays as it was.

## Parameters

* **Max distance among points**: The program does not use this value. It computes the gap that ends a scan line from the point cloud.
* **Min height to aerial points**: Height difference with the previous and the next point on the line for a point to move to the high noise class (18).
* **Min height to buildings**: Height difference for a point to move to the building class. It is also the height difference that moves the end points of a line to the building class.
* **Min height to high vegetation**: Height difference for a point to move to the high vegetation class.
* **Min height to medium vegetation**: Height difference for a point to move to the medium vegetation class.
* **Min height to low vegetation**: Height difference for a point to move to the low vegetation class. It is also the minimum height difference of a step for its points to move to the wall class (91).
* **Only in the selection**: The tool works only with the selected points. If this option is not checked and there is a selection view, it works with the points of the selection view.

If a height is 0, the tool does not look for that class.

See also:

* [Delete peaks](borrar-picos.md)
* [Sort LiDAR points](ordenar-puntos-lidar.md)
* [Filter points](filtrar-puntos.md)
* [Average flight lines](promediar-pasadas.md)
