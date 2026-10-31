# Compare 3D clouds
<!-- id: comparar-nubes-3d -->
<!-- origen: 48df6d40c577f20e87ec36ce9bb870253ba5fde0 -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

This tool compares two point clouds.

![3D Cloud compare dialog](../../../images/image-36.png)

Required parameters:

* **File for projection**:
  * _Name_: reference model file to compare with the new scan.
  * _Resolution at 10 m_: distance step for comparisons.
* **Output documents**:
  * _Point cloud_: generates a cloud of points where differences were found.
  * _Vector boundaries_: generates boundaries grouping points where differences were found.
* **Output document parameters**:
  * _Tolerance_: minimum and maximum differences to consider.
  * _Codes_: codes for negative and positive difference areas, respectively.
  * _Min. Area_: minimum area for a region to be considered.
* **Report file**: optional ASCII report.
