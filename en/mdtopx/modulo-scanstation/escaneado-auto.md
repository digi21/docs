# Scan Auto
<!-- id: escaneado-auto -->
<!-- origen: 068755f5e6a6773daf008794821475171f7d0b5c -->

[ScanStation tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-scanstation.md)

This tool communicates with the scanner to perform scans and compare them with a reference scan at a specified interval.

![3D monitoring dialog](../../images/image-37.png)

The following parameters are required:

* **Scan parameters**:
  * _Scanner serial number_: scanner serial number. Consult the device documentation to locate it.
  * _Project name_: scanner project used to store the scan. Created if it does not exist.
  * _Scanning Mode_: _Speed_, _Distance_, _Medium distance_ or _Long distance_.
  * _Scanning Precision_: _Normal_ or _High_.
  * _Scanning Resolution_: available resolutions at a distance of 10 m:
    * 50 mm
    * 25 mm
    * 12.5 mm
    * 6.3 mm
    * 3.1 mm
    * 1.6 mm
    * 0.8 mm
  * _Double Scanning_:
  * _Minimum azimuth_: minimum horizontal angle relative to the scanner's horizontal circle zero, in degrees. Minimum 0.
  * _Maximum azimuth_: maximum horizontal angle relative to that zero, in degrees. Maximum 360.
  * _Minimum Elevation_: minimum vertical angle from horizontal, in degrees. Minimum -90.
  * _Maximum Elevation_: maximum vertical angle from horizontal, in degrees. Maximum 90.
* **Output parameters**:
  * _Include intensity_: includes each point's recorded intensity.
  * _Environmental Correction_:
  * _Mixed Pixels_:
  * _Include colour_:
* **Frequency**: interval in hours and minutes between scans.
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
* **Output setup**:
  * _Name_: file name.
  * _Type_: file type.
  * _Report_: generates an ASCII report if desired.
  * _Folder_: folder storing the report and scan.
