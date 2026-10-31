# Grid from LiDAR
<!-- id: rejilla-a-partir-de-lidar -->
<!-- origen: cff621f0e961ffe4f43b88f2cffb0afe1497a24f -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

Generates a regular point grid interpolated from LiDAR points. Also finds and classifies points differing greatly from their surroundings, excluding them from interpolation.

![Generate DEM dialog](../../../images/image-149.png)

Required parameters:

* **Limits**: maximum and minimum X and Y coordinates.
* **Cell size**: grid cell size.
* **Quality control**: checks for points with abnormal elevations compared with others in the same cell.
* **Classify points**: assigns points failing quality control the classification specified in Type.
* **Output**:
  * _Single file_: one file in MDTopX grid [DEM format](../../modulo-virtualand/).
  * _Split into sheets_: multiple files at the specified sheet size, named using Prefix. Hash signs are replaced by sheet numbers: "salida\_##" generates "salida\_01", "salida\_02", and so on.
