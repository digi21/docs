# Edit points in LiDAR files
<!-- id: editar-puntos-en-archivos-lidar -->
<!-- origen: 91adec7380a36dc1fb40c69eb5a54aa96d89b860 -->

[Laser tab](./)

* [**Filter points**](../../modulo-laser/editar/filtrar-puntos.md): reduces point density.
* [**Average flight lines**](../../modulo-laser/editar/promediar-pasadas.md): averages spatially coincident points recorded from different viewpoints.
* [**Set RGB color**](../../modulo-laser/editar/asignar-color-rgb-a-puntos.md): assigns RGB colors from an external georeferenced orthophoto or a perspective image with exterior orientation. This adds information when laser points have no color.
* **Background image**: loads a georeferenced orthophoto or a perspective image with orientation into the view to help edit points. Rotation is disabled, leaving only the overhead view. A project with 360-degree MMS images can also be loaded and displayed in the [Background images pane](../../introduccion/paneles-de-la-aplicacion/panel-imagenes-de-fondo.md).
* **Unload BG image**: unloads the background image.
* [**Smooth cloud**](../../modulo-laser/editar/suavizar-nube.md): smooths the elevations of an airborne LiDAR point cloud along the scan lines of the flight. Before smoothing, it classifies the points that stick out above or sink below their neighbors on the line.
* [**Delete peaks**](../../modulo-laser/editar/borrar-picos.md): finds and classifies points above the surrounding terrain that would create spikes in a DTM.
* [**Sort points**](../../modulo-laser/editar/ordenar-puntos-lidar.md): sorts points by their properties, usually GPS time, or by X and Y when no time is recorded.
