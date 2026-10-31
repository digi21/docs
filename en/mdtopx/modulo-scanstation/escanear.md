# Start Scan
<!-- id: escanear -->
<!-- origen: 1a7e95d3b5b071882c5e1b43b1b3b1b974908594 -->

[ScanStation tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-scanstation.md)

This tool communicates with the scanner to start a scan.

![Start Scan dialog](../../images/image-31.png)

The following parameters are required:

* **Scanner serial number**: scanner serial number. Consult the device documentation to locate it.
* **Project name**: scanner project used to store the scan. Created if it does not exist.
* **Scanning Mode**: _Speed_, _Distance_, _Medium distance_ or _Long distance_.
* **Scanning Precision**: _Normal_ or _High_.
* **Scanning Resolution**: available resolutions at a distance of 10 m:
  * 50 mm
  * 25 mm
  * 12.5 mm
  * 6.3 mm
  * 3.1 mm
  * 1.6 mm
  * 0.8 mm
* **Double Scanning**:
* **Minimum azimuth**: minimum horizontal angle relative to the scanner's horizontal circle zero, in degrees. Minimum 0.
* **Maximum azimuth**: maximum horizontal angle relative to that zero, in degrees. Maximum 360.
* **Minimum elevation**: minimum vertical angle from horizontal, in degrees. Minimum -90.
* **Maximum elevation**: maximum vertical angle from horizontal, in degrees. Maximum 90.
* **Output**:
  * _Extract data from scanner_: transfers recorded data to the computer. If disabled, the scan remains in scanner memory.
  * _Include intensity_: includes each point's recorded intensity.
  * _Environmental Correction_:
  * _Mixed Pixels_:
  * _Include colour_:
  * _Save file to disk_: saves the file to disk.
    * _Name_: file name.
    * _Type_: file type.
