# Compare clouds
<!-- id: comparar-nubes -->
<!-- origen: 8ecd77ae8d3fb5c8b075b896f5da3d7e9a2cf90e -->

[Generate from LiDAR](../../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/calcular-a-partir-de-lidar.md)

This tool compares two LiDAR point clouds by elevation and classification.

![Cloud compare dialog](../../../images/image-158.png)

Dialog fields:

* **File for projection**: LiDAR cloud file to compare with the current document.
* **Maximum distance among points**: maximum neighbor distance, based on point density.
* **Type of computation**:
  * _TIN interpolation_: calculates on a TIN generated from all points of the specified type.
  * _Grid interpolation_: calculates on a grid whose step equals maximum point distance.
* **Point height**: difference points retain original elevation or store the difference between clouds.
* **Report file**: ASCII file storing comparison results.
* **Output documents**:
  * _Point cloud_: compared points whose differences exceed specified tolerances.
  * _Vector boundaries_: boundaries formed from error points and exceeding the specified area.
* **Typologies**: Ground, Buildings or Vegetation. For each:
  * _Tolerance_: positive or negative elevation difference in meters above which an error is detected.
  * _Codes_: code for recording this type's vector boundaries, if selected as output.
  * _Min. Area_: minimum boundary area for recording, if vector boundary output is selected.
