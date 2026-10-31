# Comparison 3D
<!-- id: comparacion-3d -->
<!-- origen: db025b1bacabe5f8c8d84754da99f6427179df72 -->

[ScanStation tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-scanstation.md)

This tool compares two point clouds.

![3D Cloud compare dialog](../../images/image-36.png)

The following parameters are required:

* **File for projection**:
  * _Name_: reference model file to compare with the new scan.
  * _Resolution at 10 m_: distance step for comparisons.
* **Output documents**:
  * _Point cloud_: creates a point cloud containing points where differences were found.
  * _Vector boundaries_: creates vector boundaries grouping points where differences were found.
* **Output document parameters**:
  * _Tolerance_: minimum and maximum differences to consider.
  * _Codes_: codes for storing negative and positive difference areas, respectively.
  * _Min. Area_: minimum area for a region to be considered.
* **Report file**: generates an ASCII report if desired.
