# Edit points in LiDAR files
<!-- id: editar-puntos-en-archivos-lidar -->
<!-- origen: 28e60ee72c2ae3b1e399da6b2e3f7e9c692bf300 -->

[Laser tab](./)

* [**Filter points**](../../modulo-laser/editar/filtrar-puntos.md): reduces point density.
* [**Average flight lines**](../../modulo-laser/editar/promediar-pasadas.md): averages spatially coincident points recorded from different viewpoints.
* [**Set RGB color**](../../modulo-laser/editar/asignar-color-rgb-a-puntos.md): assigns RGB colors from an external georeferenced orthophoto or a perspective image with exterior orientation. This adds information when laser points have no color.
* **Background image**: loads a georeferenced orthophoto or a perspective image with orientation into the view to help edit points. Rotation is disabled, leaving only the overhead view. A project with 360-degree MMS images can also be loaded and displayed in the [Background images pane](../../introduccion/paneles-de-la-aplicacion/panel-imagenes-de-fondo.md).
* **Unload BG image**: unloads the background image.
* **Smooth cloud**:
* [**Delete peaks**](../../modulo-laser/editar/borrar-picos.md): finds and classifies points above the surrounding terrain that would create spikes in a DTM.
* [**Sort points**](../../modulo-laser/editar/ordenar-puntos-lidar.md): sorts points by their properties, usually GPS time, or by X and Y when no time is recorded.
